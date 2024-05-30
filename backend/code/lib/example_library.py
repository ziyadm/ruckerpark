from models.example_model import ExampleModel


def get_example_data() -> ExampleModel:
    return ExampleModel(
        str_field="example string",
        int_field=42,
        bool_field=True,
    )
