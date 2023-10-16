function validatePassword() {
	// Get the password and confirmPassword elements using destructuring
	const { value: password } = document.getElementById('password');
	const { value: confirmPassword } = document.getElementById('confirmPassword');
  
	// Check if the values are the same using the === operator
	if (password !== confirmPassword) {
		// If not, set a custom validity message using template literals and return false
		document.getElementById('confirmPassword').setCustomValidity('Passwords do not match');
		return false;
	}
    
	// If the values are the same, clear the custom validity message and return true
	document.getElementById('confirmPassword').setCustomValidity('');
	return true;
}