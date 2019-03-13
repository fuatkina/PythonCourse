from linear_regression import linearregression
import unittest

test_input1=[1,2,3]
test_input2="test_input"

class Test_LinearRegressionFunction(unittest.TestCase):   
    def test_output1(self):            
        self.assertEqual(linearregression(test_input1), "bad input!")
    def test_output2(self):            
        self.assertEqual(linearregression(test_input2), "bad input!")    
if __name__ == '__main__':
    unittest.main(argv=['first-arg-is-ignored'], exit=False)
