function result = myFunctionImproved(input)
  % Improved error handling
  try
    result = some_operation(input);
  catch exception
    % Rethrow the exception to propagate the error
    rethrow(exception);
  end
end

% Example usage
input = [1, 2, 3, 4, 5];

try
  result = myFunctionImproved(input);
catch exception
  fprintf('An error occurred: %s\n', exception.message);
  %Further error handling here
end