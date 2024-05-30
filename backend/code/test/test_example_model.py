import unittest

from models.example_model import ExampleModel


class TestExampleModel(unittest.TestCase):
    def test_serialize_example_model(self, /) -> None:
        example_data = ExampleModel(
            str_field="test",
            int_field=1,
            bool_field=True,
        )

        self.assertEqual(
            example_data.json(),
            """{"str_field": "test",
"int_field": 1,
"bool_field": true}""",
        )
