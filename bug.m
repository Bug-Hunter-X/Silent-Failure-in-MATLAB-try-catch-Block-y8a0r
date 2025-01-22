function result = myFunction(input)
  % Some code that might throw an error
  try
    result = some_operation(input);
  catch exception
    % Handle the exception, but don't rethrow
    disp(['An error occurred: ', exception.message]);
    result = NaN; % Or some other default value
  end
end

% Example usage
input = [1, 2, 3, 4, 5];
result = myFunction(input);

if isnan(result)
  disp('The function encountered an error.');
end