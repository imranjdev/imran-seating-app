package com.imr.seatingapp.validator;

import java.util.regex.Pattern;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.imr.seatingapp.bean.User;


/**
 * @author seethayya.n
 *
 */
@Component
public class UserValidator implements Validator {

	private final Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	/*private UserDetailsService userDetailsService;

	public UserValidator(UserDetailsService userDetailsService) {
		this.userDetailsService = userDetailsService;
	}*/

	@Override
	public boolean supports(Class<?> aClass) {
		return User.class.equals(aClass);
	}

	@Override
	public void validate(Object o, Errors errors) {
		User user = (User) o;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "location", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "passwordConfirm", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "country", "NotEmpty");
		try {
			/*if (userDetailsService.loadUserByUsername(user.getEmail()) != null) {
				errors.rejectValue("email", "Duplicate.userForm.userName");
			}*/
		} catch (Exception e) {
			LOGGER.warn(e.getMessage(), e);
		}
		Pattern pattern = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);
		/*if (!(pattern.matcher(user.getEmail()).matches())) {
			errors.rejectValue("email", "user.email.invalid");
		}
*/
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
		/*if (user.getPasswordConfirm() == null || !user.getPasswordConfirm().equals(user.getPassword())) {
			errors.rejectValue("passwordConfirm", "Diff.userForm.passwordConfirm");
		}*/

	}
}
