# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Component.create(name: 'welcome', title: 'Welcome!', body: '
  <p class="text-center">We’re pleased that you are considering Paramount of Oak Park as a short or long term residence for yourself or your loved one.</p>
  <p class="text-center">Before you read any further, there is one thing we want you to know.</p>
  <h3 class="text-center">We want you to feel at home.</h3>
  <p class="text-center">At Paramount of Oak Park, you are part of our family. As a resident, or family member of a resident, we welcome you and want you to feel as comfortable as possible.</p>
  ')

Component.create(name: 'we_offer', title: '', body: '
<h4>We offer:</h4>
<li>A full service nursing center</li>
<li>A complete restorative therapy program</li>
<li>Short term stays for respite, recovery/rehabilitation</li>
<li>Hospice care</li>
<li>Dementia services</li>
<li>State of the art rehabilitative equipment</li>
<li>Professional, friendly, and caring health professionals</li>
')

Component.create(name: 'we_invite', title: '', body: '
  <h4>We invite you to visit us</h4>
  <p>Come for a meal, take a tour, and discover how our family can care for your family.</p>
  <p>We thank you for considering Paramount of Oak Park as the place for you or your loved one to call home for however long you need us. It is “paramount” to us to provide a comfortable and friendly environment, and we are proud of our facility and our staff.</p>
  ')

Component.create(name: 'services', title: 'Services', body: '
  <h4 class="text-center">Listed below are just some of the specialized services we offer to you</h4>
  <div class="checklist"><ul>
  <li>&nbsp;&nbsp; 24-hour nursing care coverage</li>
  <li>&nbsp;&nbsp; Physical Therapy, Occupational Therapy, Speech Therapy</li>
  <li>&nbsp;&nbsp; E-Stim Therapy</li>
  <li>&nbsp;&nbsp; Diathermy</li>
  <li>&nbsp;&nbsp; Therapeutic Ultrasound</li>
  <li>&nbsp;&nbsp; Personalized Rehabilitation Programs</li>
  <li>&nbsp;&nbsp; Enteral (tube) Feeding and IV Therapy Services</li>
  <li>&nbsp;&nbsp; Restorative Therapy Program</li>
  <li>&nbsp;&nbsp; Dental, Podiatry, Psychiatry, Audiology, Dermatology and Optometry care (by appointment)</li>
  <li>&nbsp;&nbsp; Short-Term stays</li>
  <li>&nbsp;&nbsp; Wound Care</li>
  <li>&nbsp;&nbsp; Tracheostomy Care</li>
  <li>&nbsp;&nbsp; Private Pay, Medicare, Medicaid and Some Private Insurance accepted</li>
  </ul></div>
  ')

Component.create(name: 'amenities_activities', title: 'Amenities and Activities', body: '
  <h4>Paramount of Oak Park is a full service residence – and we are proud to provide a beautiful, bright, attractive facility which offers ample opportunities for entertainment and outings.</h4>
  <div class="checklist"><ul>
  <li>&nbsp;&nbsp; Daily housekeeping</li>
  <li>&nbsp;&nbsp; On-site laundry services</li>
  <li>&nbsp;&nbsp; Cable TV</li>
  <li>&nbsp;&nbsp; Transportation aide available for off-site appointments and activities</li>
  <li>&nbsp;&nbsp; Live entertainment</li>
  <li>&nbsp;&nbsp; Arts and Crafts</li>
  <li>&nbsp;&nbsp; Morning exercise</li>
  <li>&nbsp;&nbsp; Resident spotlights</li>
  <li>&nbsp;&nbsp; Monthly birthday parties</li>
  <li>&nbsp;&nbsp; Holiday parties</li>
  <li>&nbsp;&nbsp; Walk-in Tub</li>
  <li>&nbsp;&nbsp; Rehabilitation Unit</li>
  </ul></div>
  ')

Component.create(name: 'social_services', title: 'Social Services', body: '
  <p>Transitions can be hard for everyone involved. If you or a loved one is being transferred to a rehabilitative facility, you probably have many questions and concerns.</p>
  <p>We want to help.</p>
  <p>Our staff of professional social workers will help ease those transitions and become part of your care team. They will continue to provide support, answer questions, and work with you to find solutions for every problem that arises.</p>
  <p>If paperwork and insurance issues are becoming confusing, the Social Services Department will work with you to explain how and what to do, and will work with you to make any necessary arrangements upon discharge. If needed, a social worker can also help with Advance Directives or arranging hospice services.</p>
    ')

Component.create(name: 'rooms', title: 'Rooms', body: '
  <p>We offer both Semi-Private and Private rooms.</p>
  <p>Each room is well-designed to feel homey while remaining functional.</p>
  <p>Want to make your room feel more like home? Feel free to bring items from home to personalize and decorate your room!</p>
  ')

Component.create(name: 'care_paramount', title: 'Care Is Paramount', body: '
  <p>We can never say enough about our devotion to our residents and their comfort, both physical and emotional. Our residents, their families, and their friends are part of our own family and will be treated with utmost respect and dedication. Come visit us and see for yourself.</p>
  ')

Component.create(name: 'circle_of_care', title: "Paramount of Oak Park\'s Circle of Care", body: '
  <p>The “Circle of Care” represents the important relationships that our residents have and how they interconnect to form a continuum of care.</p>
  <p><strong>It is essential</strong> to continue the continuum of care that has been set by the physician, hospital, home health or other provider. At Paramount of Oak Park <strong>we welcome</strong> physicians to follow their patients, and if a hospitalization is needed, we make every effort to return the resident to the hospital of their previous care.</p>
  <p><strong>The relationships that our residents have</strong> at home are equally important. Wherever our residents live, we recognize the importance of the concept of “home.”</p>
  <p><strong>The residents’ goals are our goals as well,</strong> and are achieved by keeping an open line of communication with him or her, with their family, with the senior community, the physician, the hospital, and the home health agency.</p>
  <p><strong>If home health or other home services are needed</strong> when the resident returns home, we will coordinate these services to provide a stress-free and convenient transition home.</p>
  <p><strong>Our commitment to the continuity, to the circle of care, is “Paramount.”</strong></p>
  ')

Component.create(name: 'wound_care', title: 'Wound Care', body: '
  <p>Paramount of Oak Park offers the latest techniques and therapies for wound care. Our team is specially trained in this area, and we are proud of our many accomplishments, and especially of the many residents whom we have been able to help.</p>
  <p>Whether the wound care therapy program is a short or long term one, we are ready to welcome you or your loved one, and create a comfortable and warm environment in which to continue the healing process.</p>
  <p>Some of our wound care specialties include:</p>
  <li>Certified Wound Care Nurse on site 7 days a week</li>
  <li>Wound-Vac Therapy- Now featuring the new PICO therapy system</li>
  <li>Pressure relieving devices</li>
  <li>E-Stim Therapy</li>
  ')

Component.create(name: 'dementia_care', title: 'Dementia Care', body: '
  <p>Paramount of Oak Park is proud to offer a unique range of services for those residents with dementia.  Our staff is trained in the latest forms of therapy and care for the dementia patient, and we offer a warm, comfortable, and safe atmosphere.</p>
  <p>The daily routine and plan of care for the dementia patient will differ from individual to individual, but it begins with a thorough analysis and consultation with the resident’s caregivers, family, and medical team.  We make sure to involve everyone with whom the resident is familiar and comfortable, so as to lessen any stress on him or her.</p>
  <p>At Paramount of Oak Park, we focus on our staff education, and therapeutic programming in order to implement a "habilitation" model of care. Habilitation focuses on maintaining the skills, interests and abilities the resident has, a proven successful model for treating the dementia resident.</p>
  <p>In addition, we encourage and welcome family and friends to visit, talk to our caregivers, and check in on the status of their loved one.</p>
  ')

Component.create(name: 'therapy', title: 'Therapy', body: '
  <h3 class="title text-center">Physical Therapy</h3>
  <p>Our therapy department is designed to suit various levels of cognitive and physical ability. After a thorough evaluation and discussion with our professional staff, we will design a therapy program that meets your needs.</p>
  <p>Then, we will continuously monitor that program to assess whether any changes need to be made along the way.</p>
  <p>We proudly offer the Omnicycle Elite Motorized Rehabilitation System, Ultrasound therapy, and ESTIM therapy.</p>
  <p><br style="color: rgb(66, 66, 66)"></p>
  <h3 class="title text-center">Occupational Therapy</h3>
  <p>Our residents are offered a wide array of occupational therapy treatments. These treatments are designed and geared to each patient as an individual, and help make the resident feel more confident and comfortable with daily activities.</p>
  <p><br style="color: rgb(66, 66, 66)"></p>
  <h3 class="title text-center">Speech Therapy</h3>
  <p>Many of our residents receive speech therapy from our highly trained specialists. We pride ourselves in the accomplishments of our residents, and celebrate each new victory with them as they progress throughout the therapy sessions.</p>
  <p>Our Therapists have specialized training in LSVT BIG and LOUD treatment, providing post-stroke and Parkinson’s disease therapy. Please see <a href="http://lsvtglobal.com">lsvtglobal.com</a> for more information.</p>
  ')

Component.create(name: 'short_term_therapy', title: 'Short Term Therapy', body: '
  <h3 class="title text-center">Short Term Therapy</h3>
  <p>Paramount of Oak Park welcomes many residents who only stay with us for a short time.</p>
  <p>We have designed a state-of-the-art therapy unit, with the focus on our residents who require a short term stay. No matter how long our residents stay with us, we proudly offer the finest in health care, social services, and all types of rehabilitative therapy.</p>
  <p>Paramount of Oak Park features a brand new wing for short term Rehabilitation. The brand new rooms have been redesigned for a comfortable short term stay. Our new wing also consists of a private dining room and access to the new walk in tub.</p>
  <p>Our Therapy programs, designed for your needs, include but are not limited to the following: Orthapedic Therapy, Cardiac Therapy, Wound therapy, Parkinson’s disease Therapy, Huntington’s disease therapy, and Post-Stroke rehabilitation.</p>
  <p>Paramount is pleased to announce a new Pulmonary Rehabilitation wing opening in March 2017. Led by Pulmonologist, Dr. Brahma Gupta, Paramount will be opening a wing devoted to Tracheostomy care. Working hand in hand with Dr. Gupta, Paramount will provide the highest quality Pulmonary and Tracheostomy care.</p>
  <p><br style="color: rgb(66, 66, 66)"></p>
  ')