import { render } from '@testing-library/react';
import '@testing-library/jest-dom';  // Importing jest-dom to extend Jest matchers
import App from './App';
import React from 'react';

test('renders without crashing', () => {
  render(<App />);  // Just renders the component
  
  // If the render doesn't throw an error, the test will pass
});
