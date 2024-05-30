from pydantic import BaseModel


class ExampleModel(BaseModel):
    str_field: str
    int_field: int
    bool_field: bool
