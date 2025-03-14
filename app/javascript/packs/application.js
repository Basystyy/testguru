// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import '../stylesheets/application.scss';

import Rails from '@rails/ujs';
import Turbolinks from 'turbolinks';
import * as ActiveStorage from '@rails/activestorage';
import 'channels';

import 'bootstrap';
import './localization';
import './add_popover';

Rails.start();
Turbolinks.start();
ActiveStorage.start();

import '../utilities/sorting';
import '../utilities/confirmation';
import '../utilities/form_inline';
import '../utilities/progress_bar';
