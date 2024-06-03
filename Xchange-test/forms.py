from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, PasswordField, SelectField, BooleanField
from wtforms.validators import DataRequired, URL, Length, Email, Regexp
from flask_ckeditor import CKEditorField
from flask_wtf.file import FileField, FileAllowed

# WTForm for creating a blog post
class CreatePostForm(FlaskForm):
    title = StringField("Blog Post Title", validators=[DataRequired()])
    img_url = StringField("Blog Image URL")
    # img_url = StringField("Blog Image URL", validators=[URL()])
    body = CKEditorField("Blog Content", validators=[DataRequired()])
    images_folder = FileField("Images Folder")
    # images_folder = FileField("Images Folder", validators=[FileAllowed(['zip'])])
    submit = SubmitField("Submit Post")

class RegisterForm(FlaskForm):
    name = StringField("Your Name*", validators=[DataRequired()])
    id = StringField("Your Student ID *", validators=[DataRequired(),Length(min=9,max=9,message='invalid ID'),Regexp('^\d{9}$',message='incorrect format')])
    email = StringField("Your E-Mail Address *", validators=[DataRequired(),Email(message='invalid email')])
    password = PasswordField("Your Password *", validators=[DataRequired(),Length(min=8 ,message='Too short')])
    confirm_password = PasswordField("Confirm Password *", validators=[DataRequired()])
    img_url = FileField("Profile Picture")
    student_type = SelectField('Are you an incoming or outgoing student?', 
                               choices=[('incoming', 'Incoming'), ('outgoing', 'Outgoing')], 
                               validators=[DataRequired()])
    submit = SubmitField("Next")


class IncomingForm(FlaskForm):
    origin_school = StringField("What school are you from? *", validators=[DataRequired()])
    continent = SelectField('What continent are you from? *', choices=[('', 'Select Continent'),('asia', 'Asia'), ('europe', 'Europe'), ('americas', 'Americas'), ('africa', 'Africa'), ('oceania', 'Oceania')], validators=[DataRequired()],id='continent')
    country = StringField('What country are you from? *', validators=[DataRequired()])
    # country = SelectField('What country is it in?', choices=[],validate_choice=False)
    region = StringField('What region are you from?')
    info = CKEditorField('Tell us about yourself(eg. hobbies, interests, etc.) ')
    submit = SubmitField('Submit',id='submit')
    
class OutgoingForm(FlaskForm):
    exchanging_school = StringField("What school do you go to for exchange? *", validators=[DataRequired()])
    continent = SelectField('What continent is it on? *', choices=[('', 'Select Continent'),('asia', 'Asia'), ('europe', 'Europe'), ('americas', 'Americas'), ('africa', 'Africa'), ('oceania', 'Oceania')], validators=[DataRequired()],id='continent')
    country = StringField('What country is it in? *', validators=[DataRequired()])
    # country = SelectField('What country is it in?', choices=[],validate_choice=False)
    region = StringField('What region is it in?')
    info = CKEditorField('Tell us about yourself(eg. hobbies, interests, etc.) ')
    submit = SubmitField('Submit',id='submit')

class LoginForm(FlaskForm):
    id = StringField("Your User ID", validators=[DataRequired()])
    password = PasswordField("Your Password", validators=[DataRequired()])
    submit = SubmitField("Get Started!")

class CommentForm(FlaskForm):
    comment = CKEditorField("Add a Comment", validators=[DataRequired()])
    anonymous = BooleanField("Anonymous")
    submit = SubmitField("Submit Comment")
