 @extends('layout')
 @section('content')

 <div id="contact-page" class="container">
        <div class="bg">
            <div class="row">           
                <div class="col-sm-7">                         
                    <h2 class="title text-center">Contact <strong>Us</strong></h2>                                                      
                    <div class="span12 relative">
       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.3651338268514!2d106.69243501431762!3d10.85980816061984!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529c17978287d%3A0xec48f5a17b7d5741!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOZ3V54buFbiBU4bqldCBUaMOgbmggLSBDxqEgc-G7nyBxdeG6rW4gMTI!5e0!3m2!1svi!2s!4v1631332688064!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

                    </div>
                </div>                  
            </div>      
            <div class="row">   
                <div class="col-sm-8">
                    <div class="contact-form">

                        <h2 class="title text-center">Đăng Ký</h2>
                        
                        <div class="status alert alert-success" style="display: none"> 
                        </div>
                        <form id="main-contact-form" class="contact-form row" name="contact-form" action="{{URL::to('/show-cart')}}" method="get">
                             {{csrf_field()}}
                            <div class="form-group col-md-6">
                                <input type="text" name="customer_name" class="form-control" required="required" placeholder="Name">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="email" name="customer_email" class="form-control" required="required" placeholder="Email">
                            </div>
                            <div class="form-group col-md-12">
                                <input type="password" name="customer_password" class="form-control" required="required" placeholder="PassWord">
                            </div>
                            <div class="form-group col-md-12">
                                <input type="text" name="customer_phone" class="form-control" required="required" placeholder="Phone">
                            </div>                        
                            <div class="form-group col-md-12">
                                <input type="submit" name="submit" class="btn btn-primary pull-right"  value="Submit">
                            </div>
                     
                        </form>
                    </div>
                </div>
               <!--  <div class="col-sm-4">
                    <div class="contact-info">
                        <h2 class="title text-center">Contact Info</h2>
                        <address>
                            <p>E-Shopper Inc.</p>
                            <p>935 W. Webster Ave New Streets Chicago, IL 60614, NY</p>
                            <p>Newyork USA</p>
                            <p>Mobile: +2346 17 38 93</p>
                            <p>Fax: 1-714-252-0026</p>
                            <p>Email: info@e-shopper.com</p>
                        </address>
                        <div class="social-networks">
                            <h2 class="title text-center">Social Networking</h2>
                            <ul>
                                <li>
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-youtube"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>  -->             
            </div>  
        </div>  
    </div><!--/#contact-page-->






 @endsection