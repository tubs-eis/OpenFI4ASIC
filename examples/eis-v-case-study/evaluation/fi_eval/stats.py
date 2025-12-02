from .bit_flip_data import BitFlipData


def generate_stats(
    scan_chain_architecture: list[str],
    errors: list[list[BitFlipData]],
    category_flip_flops: dict[str, list[int]],
) -> dict[str, dict[str, int | float]]:
    stats: dict[str, dict[str, int | float]] = {}
    for category, flip_flops in category_flip_flops.items():
        stats[category] = {}

        stats[category]["total_error_count"] = sum(
            sum(1 for _ in filter(lambda bfd: bfd.any_error(), errors[index]))
            for index in flip_flops
        )

        stats[category]["wrong_result_count"] = sum(
            sum(1 for _ in filter(lambda bfd: bfd.wrong_result, errors[index]))
            for index in flip_flops
        )
        stats[category]["control_flow_error_count"] = sum(
            sum(
                1 for _ in filter(lambda bfd: bfd.control_flow_violation, errors[index])
            )
            for index in flip_flops
        )
        stats[category]["both_error_count"] = sum(
            sum(
                1
                for _ in filter(
                    lambda bfd: bfd.wrong_result and bfd.control_flow_violation,
                    errors[index],
                )
            )
            for index in flip_flops
        )

        stats[category]["no_error_count"] = sum(
            sum(1 for _ in filter(lambda bfd: not bfd.any_error(), errors[index]))
            for index in flip_flops
        )

        flip_flops = category_flip_flops[category]
        if len(flip_flops) == 0:
            continue
        stats[category]["num_ff_in_design"] = len(flip_flops)
        stats[category]["fi_runs"] = len(flip_flops) * len(errors[1])

        stats[category]["wrong_result_rate"] = (
            stats[category]["wrong_result_count"] / stats[category]["fi_runs"]
        )
        stats[category]["control_flow_error_rate"] = (
            stats[category]["control_flow_error_count"] / stats[category]["fi_runs"]
        )
        stats[category]["both_error_rate"] = (
            stats[category]["both_error_count"] / stats[category]["fi_runs"]
        )
        stats[category]["no_error_rate"] = (
            stats[category]["no_error_count"] / stats[category]["fi_runs"]
        )
        stats[category]["total_error_rate"] = (
            stats[category]["total_error_count"] / stats[category]["fi_runs"]
        )

    # Generate ISA stats as the sum of pc and RF stats
    stats["isa"] = {}
    stats["pipeline"] = {}
    for column in [
        "num_ff_in_design",
        "fi_runs",
        "total_error_count",
        "wrong_result_count",
        "control_flow_error_count",
        "both_error_count",
        "no_error_count",
    ]:
        stats["isa"][column] = stats["pc"][column] + stats["gp_register_file"][column]

        datapath_value = 0
        if column in stats["pipeline_datapath"]:
            datapath_value = int(stats["pipeline_datapath"][column])
        controlpath_value = 0
        if column in stats["pipeline_controlpath"]:
            controlpath_value = int(stats["pipeline_controlpath"][column])

        stats["pipeline"][column] = datapath_value + controlpath_value

    for row in ["isa", "pipeline"]:
        if stats[row]["fi_runs"] == 0:
            continue

        stats[row]["wrong_result_rate"] = (
            stats[row]["wrong_result_count"] / stats[row]["fi_runs"]
        )
        stats[row]["control_flow_error_rate"] = (
            stats[row]["control_flow_error_count"] / stats[row]["fi_runs"]
        )
        stats[row]["both_error_rate"] = (
            stats[row]["both_error_count"] / stats[row]["fi_runs"]
        )
        stats[row]["no_error_rate"] = (
            stats[row]["no_error_count"] / stats[row]["fi_runs"]
        )
        stats[row]["total_error_rate"] = (
            stats[row]["total_error_count"] / stats[row]["fi_runs"]
        )

    stats["total"] = {}

    stats["total"]["total_error_count"] = sum(
        sum(1 for _ in filter(lambda bfd: bfd.any_error(), errors[index]))
        for index in range(len(errors))
    )

    stats["total"]["wrong_result_count"] = sum(
        sum(1 for _ in filter(lambda bfd: bfd.wrong_result, errors[index]))
        for index in range(len(errors))
    )

    stats["total"]["control_flow_error_count"] = sum(
        sum(1 for _ in filter(lambda bfd: bfd.control_flow_violation, errors[index]))
        for index in range(len(errors))
    )
    stats["total"]["both_error_count"] = sum(
        sum(
            1
            for _ in filter(
                lambda bfd: bfd.wrong_result and bfd.control_flow_violation,
                errors[index],
            )
        )
        for index in range(len(errors))
    )

    stats["total"]["no_error_count"] = sum(
        sum(1 for _ in filter(lambda bfd: not bfd.any_error(), errors[index]))
        for index in range(len(errors))
    )

    stats["total"]["num_ff_in_design"] = len(errors)
    total_fi_run_count = sum(len(run) for run in errors)
    stats["total"]["fi_runs"] = total_fi_run_count
    category = "total"
    stats[category]["wrong_result_rate"] = (
        stats[category]["wrong_result_count"] / stats[category]["fi_runs"]
    )
    stats[category]["control_flow_error_rate"] = (
        stats[category]["control_flow_error_count"] / stats[category]["fi_runs"]
    )
    stats[category]["both_error_rate"] = (
        stats[category]["both_error_count"] / stats[category]["fi_runs"]
    )
    stats[category]["no_error_rate"] = (
        stats[category]["no_error_count"] / stats[category]["fi_runs"]
    )
    stats[category]["total_error_rate"] = (
        stats[category]["total_error_count"] / stats[category]["fi_runs"]
    )
    return stats
