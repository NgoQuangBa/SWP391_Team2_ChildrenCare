
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Inner Page - Medilab Bootstrap Template</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">
        <style>
            :root {
                --surface-color: #fff;
                --curve: 40;
            }

            * {
                box-sizing: border-box;
            }

            body {
                font-family: 'Noto Sans JP', sans-serif;
                background-color: #fef8f8;
            }

            .cards {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
                gap: 2rem;
                margin: 4rem 5vw;
                padding: 0;
                list-style-type: none;
            }

            .card {
                position: relative;
                display: block;
                height: 100%;  
                border-radius: calc(var(--curve) * 1px);
                overflow: hidden;
                text-decoration: none;
            }

            .card__image {      
                width: 100%;
                height: auto;
                max-height: 330px;
            }

            .card__overlay {
                position: absolute;
                bottom: 0;
                left: 0;
                right: 0;
                z-index: 1;      
                border-radius: calc(var(--curve) * 1px);    
                background-color: var(--surface-color);      
                transform: translateY(100%);
                transition: .2s ease-in-out;
            }

            .card:hover .card__overlay {
                transform: translateY(0);
            }

            .card__header {
                position: relative;
                display: flex;
                align-items: center;
                gap: 2em;
                padding: 2em;
                border-radius: calc(var(--curve) * 1px) 0 0 0;    
                background-color: var(--surface-color);
                transform: translateY(-100%);
                transition: .2s ease-in-out;
            }

            .card__arc {
                width: 80px;
                height: 80px;
                position: absolute;
                bottom: 100%;
                right: 0;      
                z-index: 1;
            }

            .card__arc path {
                fill: var(--surface-color);
                d: path("M 40 80 c 22 0 40 -22 40 -40 v 40 Z");
            }       

            .card:hover .card__header {
                transform: translateY(0);
            }

            .card__thumb {
                flex-shrink: 0;
                width: 50px;
                height: 50px;      
                border-radius: 50%;      
            }

            .card__title {
                font-size: 1em;
                margin: 0 0 .3em;
                color: #6A515E;
            }

            .card__tagline {
                display: block;
                margin: 1em 0;
                font-family: "MockFlowFont";  
                font-size: .8em; 
                color: #D7BDCA;  
            }

            .card__status {
                font-size: .8em;
                color: #D7BDCA;
            }

            .card__description {
                padding: 0 2em 2em;
                margin: 0;
                color: #D7BDCA;
                font-family: "MockFlowFont";   
                display: -webkit-box;
                -webkit-box-orient: vertical;
                -webkit-line-clamp: 3;
                overflow: hidden;
            }    
            .box {
                background-color: var(--box-bg);
                padding: 20px;
                border: 0.5px solid var(--border-color);
                border-radius: var(--box-border-radius);
            }
            .box-header {
                text-transform: capitalize;
                font-size: 1.25rem;
                font-weight: 700;
            }
            .center-parent {
                text-align: center;
            }

            .center-me {
                display: inline-block;
            }
            .custom-btn {
                width: 130px;
                height: 40px;
                color: #fff;
                border-radius: 5px;
                padding: 10px 25px;
                font-family: 'Lato', sans-serif;
                font-weight: 500;
                background: transparent;
                cursor: pointer;
                transition: all 0.3s ease;
                position: relative;
                display: inline-block;
                box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
                    7px 7px 20px 0px rgba(0,0,0,.1),
                    4px 4px 5px 0px rgba(0,0,0,.1);
                outline: none;
            }

            /* 1 */
            .btn-1 {
                background: rgb(6,14,131);
                background: linear-gradient(0deg, rgba(6,14,131,1) 0%, rgba(12,25,180,1) 100%);
                border: none;
            }
            .btn-1:hover {
                background: rgb(0,3,255);
                background: linear-gradient(0deg, rgba(0,3,255,1) 0%, rgba(2,126,251,1) 100%);
            }

            /* 2 */
            .btn-2 {
                background: rgb(96,9,240);
                background: linear-gradient(0deg, rgba(96,9,240,1) 0%, rgba(129,5,240,1) 100%);
                border: none;

            }
            .btn-2:before {
                height: 0%;
                width: 2px;
            }
            .btn-2:hover {
                box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),
                    -4px -4px 6px 0 rgba(116, 125, 136, .5), 
                    inset -4px -4px 6px 0 rgba(255,255,255,.2),
                    inset 4px 4px 6px 0 rgba(0, 0, 0, .4);
            }


            /* 3 */
            .btn-3 {
                background: rgb(0,172,238);
                background: linear-gradient(0deg, rgba(0,172,238,1) 0%, rgba(2,126,251,1) 100%);
                width: 130px;
                height: 40px;
                line-height: 42px;
                padding: 0;
                border: none;

            }
            .btn-3 span {
                position: relative;
                display: block;
                width: 100%;
                height: 100%;
            }
            .btn-3:before,
            .btn-3:after {
                position: absolute;
                content: "";
                right: 0;
                top: 0;
                background: rgba(2,126,251,1);
                transition: all 0.3s ease;
            }
            .btn-3:before {
                height: 0%;
                width: 2px;
            }
            .btn-3:after {
                width: 0%;
                height: 2px;
            }
            .btn-3:hover{
                background: transparent;
                box-shadow: none;
            }
            .btn-3:hover:before {
                height: 100%;
            }
            .btn-3:hover:after {
                width: 100%;
            }
            .btn-3 span:hover{
                color: rgba(2,126,251,1);
            }
            .btn-3 span:before,
            .btn-3 span:after {
                position: absolute;
                content: "";
                left: 0;
                bottom: 0;
                background: rgba(2,126,251,1);
                transition: all 0.3s ease;
            }
            .btn-3 span:before {
                width: 2px;
                height: 0%;
            }
            .btn-3 span:after {
                width: 0%;
                height: 2px;
            }
            .btn-3 span:hover:before {
                height: 100%;
            }
            .btn-3 span:hover:after {
                width: 100%;
            }

            /* 4 */
            .btn-4 {
                background-color: #4dccc6;
                background-image: linear-gradient(315deg, #4dccc6 0%, #96e4df 74%);
                line-height: 42px;
                padding: 0;
                border: none;
            }
            .btn-4:hover{
                background-color: #89d8d3;
                background-image: linear-gradient(315deg, #89d8d3 0%, #03c8a8 74%);
            }
            .btn-4 span {
                position: relative;
                display: block;
                width: 100%;
                height: 100%;
            }
            .btn-4:before,
            .btn-4:after {
                position: absolute;
                content: "";
                right: 0;
                top: 0;
                box-shadow:  4px 4px 6px 0 rgba(255,255,255,.9),
                    -4px -4px 6px 0 rgba(116, 125, 136, .2), 
                    inset -4px -4px 6px 0 rgba(255,255,255,.9),
                    inset 4px 4px 6px 0 rgba(116, 125, 136, .3);
                transition: all 0.3s ease;
            }
            .btn-4:before {
                height: 0%;
                width: .1px;
            }
            .btn-4:after {
                width: 0%;
                height: .1px;
            }
            .btn-4:hover:before {
                height: 100%;
            }
            .btn-4:hover:after {
                width: 100%;
            }
            .btn-4 span:before,
            .btn-4 span:after {
                position: absolute;
                content: "";
                left: 0;
                bottom: 0;
                box-shadow:  4px 4px 6px 0 rgba(255,255,255,.9),
                    -4px -4px 6px 0 rgba(116, 125, 136, .2), 
                    inset -4px -4px 6px 0 rgba(255,255,255,.9),
                    inset 4px 4px 6px 0 rgba(116, 125, 136, .3);
                transition: all 0.3s ease;
            }
            .btn-4 span:before {
                width: .1px;
                height: 0%;
            }
            .btn-4 span:after {
                width: 0%;
                height: .1px;
            }
            .btn-4 span:hover:before {
                height: 100%;
            }
            .btn-4 span:hover:after {
                width: 100%;
            }

            /* rgb(255,27,0) 
            linear-gradient(0deg, rgba(255,27,0,1) 0%, rgba(251,75,2,1) 100%)
            #f0094a*/
            .btn-5 {
                width: 130px;
                height: 40px;
                line-height: 42px;
                padding: 0;
                border: none;
                background: #00CED1;
                background: #00CED1;
            }
            .btn-5:hover {
                color: #00008B;
                background: transparent;
                box-shadow:none;
            }
            .btn-5:before,
            .btn-5:after{
                content:'';
                position:absolute;
                top:0;
                right:0;
                height:2px;
                width:0;
                background: #00BFFF;
                box-shadow:
                    -1px -1px 5px 0px #fff,
                    7px 7px 20px 0px #0003,
                    4px 4px 5px 0px #0002;
                transition:400ms ease all;
            }
            .btn-5:after{
                right:inherit;
                top:inherit;
                left:0;
                bottom:0;
            }
            .btn-5:hover:before,
            .btn-5:hover:after{
                width:100%;
                transition:800ms ease all;
            }


            /* 6 */
            .btn-6 {
                background: rgb(247,150,192);
                background: radial-gradient(circle, rgba(247,150,192,1) 0%, rgba(118,174,241,1) 100%);
                line-height: 42px;
                padding: 0;
                border: none;
            }
            .btn-6 span {
                position: relative;
                display: block;
                width: 100%;
                height: 100%;
            }
            .btn-6:before,
            .btn-6:after {
                position: absolute;
                content: "";
                height: 0%;
                width: 1px;
                box-shadow:
                    -1px -1px 20px 0px rgba(255,255,255,1),
                    -4px -4px 5px 0px rgba(255,255,255,1),
                    7px 7px 20px 0px rgba(0,0,0,.4),
                    4px 4px 5px 0px rgba(0,0,0,.3);
            }
            .btn-6:before {
                right: 0;
                top: 0;
                transition: all 500ms ease;
            }
            .btn-6:after {
                left: 0;
                bottom: 0;
                transition: all 500ms ease;
            }
            .btn-6:hover{
                background: transparent;
                color: #76aef1;
                box-shadow: none;
            }
            .btn-6:hover:before {
                transition: all 500ms ease;
                height: 100%;
            }
            .btn-6:hover:after {
                transition: all 500ms ease;
                height: 100%;
            }
            .btn-6 span:before,
            .btn-6 span:after {
                position: absolute;
                content: "";
                box-shadow:
                    -1px -1px 20px 0px rgba(255,255,255,1),
                    -4px -4px 5px 0px rgba(255,255,255,1),
                    7px 7px 20px 0px rgba(0,0,0,.4),
                    4px 4px 5px 0px rgba(0,0,0,.3);
            }
            .btn-6 span:before {
                left: 0;
                top: 0;
                width: 0%;
                height: .5px;
                transition: all 500ms ease;
            }
            .btn-6 span:after {
                right: 0;
                bottom: 0;
                width: 0%;
                height: .5px;
                transition: all 500ms ease;
            }
            .btn-6 span:hover:before {
                width: 100%;
            }
            .btn-6 span:hover:after {
                width: 100%;
            }

            /* 7 */
            .btn-7 {
                background: linear-gradient(0deg, rgba(255,151,0,1) 0%, rgba(251,75,2,1) 100%);
                line-height: 42px;
                padding: 0;
                border: none;
            }
            .btn-7 span {
                position: relative;
                display: block;
                width: 100%;
                height: 100%;
            }
            .btn-7:before,
            .btn-7:after {
                position: absolute;
                content: "";
                right: 0;
                bottom: 0;
                background: rgba(251,75,2,1);
                box-shadow:
                    -7px -7px 20px 0px rgba(255,255,255,.9),
                    -4px -4px 5px 0px rgba(255,255,255,.9),
                    7px 7px 20px 0px rgba(0,0,0,.2),
                    4px 4px 5px 0px rgba(0,0,0,.3);
                transition: all 0.3s ease;
            }
            .btn-7:before{
                height: 0%;
                width: 2px;
            }
            .btn-7:after {
                width: 0%;
                height: 2px;
            }
            .btn-7:hover{
                color: rgba(251,75,2,1);
                background: transparent;
            }
            .btn-7:hover:before {
                height: 100%;
            }
            .btn-7:hover:after {
                width: 100%;
            }
            .btn-7 span:before,
            .btn-7 span:after {
                position: absolute;
                content: "";
                left: 0;
                top: 0;
                background: rgba(251,75,2,1);
                box-shadow:
                    -7px -7px 20px 0px rgba(255,255,255,.9),
                    -4px -4px 5px 0px rgba(255,255,255,.9),
                    7px 7px 20px 0px rgba(0,0,0,.2),
                    4px 4px 5px 0px rgba(0,0,0,.3);
                transition: all 0.3s ease;
            }
            .btn-7 span:before {
                width: 2px;
                height: 0%;
            }
            .btn-7 span:after {
                height: 2px;
                width: 0%;
            }
            .btn-7 span:hover:before {
                height: 100%;
            }
            .btn-7 span:hover:after {
                width: 100%;
            }

            /* 8 */
            .btn-8 {
                background-color: #f0ecfc;
                background-image: linear-gradient(315deg, #f0ecfc 0%, #c797eb 74%);
                line-height: 42px;
                padding: 0;
                border: none;
            }
            .btn-8 span {
                position: relative;
                display: block;
                width: 100%;
                height: 100%;
            }
            .btn-8:before,
            .btn-8:after {
                position: absolute;
                content: "";
                right: 0;
                bottom: 0;
                background: #c797eb;
                /*box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),
                            -4px -4px 6px 0 rgba(116, 125, 136, .2), 
                  inset -4px -4px 6px 0 rgba(255,255,255,.5),
                  inset 4px 4px 6px 0 rgba(116, 125, 136, .3);*/
                transition: all 0.3s ease;
            }
            .btn-8:before{
                height: 0%;
                width: 2px;
            }
            .btn-8:after {
                width: 0%;
                height: 2px;
            }
            .btn-8:hover:before {
                height: 100%;
            }
            .btn-8:hover:after {
                width: 100%;
            }
            .btn-8:hover{
                background: transparent;
            }
            .btn-8 span:hover{
                color: #c797eb;
            }
            .btn-8 span:before,
            .btn-8 span:after {
                position: absolute;
                content: "";
                left: 0;
                top: 0;
                background: #c797eb;
                /*box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),
                            -4px -4px 6px 0 rgba(116, 125, 136, .2), 
                  inset -4px -4px 6px 0 rgba(255,255,255,.5),
                  inset 4px 4px 6px 0 rgba(116, 125, 136, .3);*/
                transition: all 0.3s ease;
            }
            .btn-8 span:before {
                width: 2px;
                height: 0%;
            }
            .btn-8 span:after {
                height: 2px;
                width: 0%;
            }
            .btn-8 span:hover:before {
                height: 100%;
            }
            .btn-8 span:hover:after {
                width: 100%;
            }


            /* 9 */
            .btn-9 {
                border: none;
                transition: all 0.3s ease;
                overflow: hidden;
            }
            .btn-9:after {
                position: absolute;
                content: " ";
                z-index: -1;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: #1fd1f9;
                background-image: linear-gradient(315deg, #1fd1f9 0%, #b621fe 74%);
                transition: all 0.3s ease;
            }
            .btn-9:hover {
                background: transparent;
                box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),
                    -4px -4px 6px 0 rgba(116, 125, 136, .2), 
                    inset -4px -4px 6px 0 rgba(255,255,255,.5),
                    inset 4px 4px 6px 0 rgba(116, 125, 136, .3);
                color: #fff;
            }
            .btn-9:hover:after {
                -webkit-transform: scale(2) rotate(180deg);
                transform: scale(2) rotate(180deg);
                box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),
                    -4px -4px 6px 0 rgba(116, 125, 136, .2), 
                    inset -4px -4px 6px 0 rgba(255,255,255,.5),
                    inset 4px 4px 6px 0 rgba(116, 125, 136, .3);
            }

            /* 10 */
            .btn-10 {
                background: rgb(22,9,240);
                background: linear-gradient(0deg, rgba(22,9,240,1) 0%, rgba(49,110,244,1) 100%);
                color: #fff;
                border: none;
                transition: all 0.3s ease;
                overflow: hidden;
            }
            .btn-10:after {
                position: absolute;
                content: " ";
                top: 0;
                left: 0;
                z-index: -1;
                width: 100%;
                height: 100%;
                transition: all 0.3s ease;
                -webkit-transform: scale(.1);
                transform: scale(.1);
            }
            .btn-10:hover {
                color: #fff;
                border: none;
                background: transparent;
            }
            .btn-10:hover:after {
                background: rgb(0,3,255);
                background: linear-gradient(0deg, rgba(2,126,251,1) 0%,  rgba(0,3,255,1)100%);
                -webkit-transform: scale(1);
                transform: scale(1);
            }

            /* 11 */
            .btn-11 {
                border: none;
                background: rgb(251,33,117);
                background: linear-gradient(0deg, rgba(251,33,117,1) 0%, rgba(234,76,137,1) 100%);
                color: #fff;
                overflow: hidden;
            }
            .btn-11:hover {
                text-decoration: none;
                color: #fff;
            }
            .btn-11:before {
                position: absolute;
                content: '';
                display: inline-block;
                top: -180px;
                left: 0;
                width: 30px;
                height: 100%;
                background-color: #fff;
                animation: shiny-btn1 3s ease-in-out infinite;
            }
            .btn-11:hover{
                opacity: .7;
            }
            .btn-11:active{
                box-shadow:  4px 4px 6px 0 rgba(255,255,255,.3),
                    -4px -4px 6px 0 rgba(116, 125, 136, .2), 
                    inset -4px -4px 6px 0 rgba(255,255,255,.2),
                    inset 4px 4px 6px 0 rgba(0, 0, 0, .2);
            }


            @-webkit-keyframes shiny-btn1 {
                0% { -webkit-transform: scale(0) rotate(45deg); opacity: 0; }
                80% { -webkit-transform: scale(0) rotate(45deg); opacity: 0.5; }
                81% { -webkit-transform: scale(4) rotate(45deg); opacity: 1; }
                100% { -webkit-transform: scale(50) rotate(45deg); opacity: 0; }
            }


            /* 12 */
            .btn-12{
                position: relative;
                right: 20px;
                bottom: 20px;
                border:none;
                box-shadow: none;
                width: 130px;
                height: 40px;
                line-height: 42px;
                -webkit-perspective: 230px;
                perspective: 230px;
            }
            .btn-12 span {
                background: rgb(0,172,238);
                background: linear-gradient(0deg, rgba(0,172,238,1) 0%, rgba(2,126,251,1) 100%);
                display: block;
                position: absolute;
                width: 130px;
                height: 40px;
                box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
                    7px 7px 20px 0px rgba(0,0,0,.1),
                    4px 4px 5px 0px rgba(0,0,0,.1);
                border-radius: 5px;
                margin:0;
                text-align: center;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                -webkit-transition: all .3s;
                transition: all .3s;
            }
            .btn-12 span:nth-child(1) {
                box-shadow:
                    -7px -7px 20px 0px #fff9,
                    -4px -4px 5px 0px #fff9,
                    7px 7px 20px 0px #0002,
                    4px 4px 5px 0px #0001;
                -webkit-transform: rotateX(90deg);
                -moz-transform: rotateX(90deg);
                transform: rotateX(90deg);
                -webkit-transform-origin: 50% 50% -20px;
                -moz-transform-origin: 50% 50% -20px;
                transform-origin: 50% 50% -20px;
            }
            .btn-12 span:nth-child(2) {
                -webkit-transform: rotateX(0deg);
                -moz-transform: rotateX(0deg);
                transform: rotateX(0deg);
                -webkit-transform-origin: 50% 50% -20px;
                -moz-transform-origin: 50% 50% -20px;
                transform-origin: 50% 50% -20px;
            }
            .btn-12:hover span:nth-child(1) {
                box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
                    7px 7px 20px 0px rgba(0,0,0,.1),
                    4px 4px 5px 0px rgba(0,0,0,.1);
                -webkit-transform: rotateX(0deg);
                -moz-transform: rotateX(0deg);
                transform: rotateX(0deg);
            }
            .btn-12:hover span:nth-child(2) {
                box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
                    7px 7px 20px 0px rgba(0,0,0,.1),
                    4px 4px 5px 0px rgba(0,0,0,.1);
                color: transparent;
                -webkit-transform: rotateX(-90deg);
                -moz-transform: rotateX(-90deg);
                transform: rotateX(-90deg);
            }


            /* 13 */
            .btn-13 {
                background-color: #89d8d3;
                background-image: linear-gradient(315deg, #89d8d3 0%, #03c8a8 74%);
                border: none;
                z-index: 1;
            }
            .btn-13:after {
                position: absolute;
                content: "";
                width: 100%;
                height: 0;
                bottom: 0;
                left: 0;
                z-index: -1;
                border-radius: 5px;
                background-color: #4dccc6;
                background-image: linear-gradient(315deg, #4dccc6 0%, #96e4df 74%);
                box-shadow:
                    -7px -7px 20px 0px #fff9,
                    -4px -4px 5px 0px #fff9,
                    7px 7px 20px 0px #0002,
                    4px 4px 5px 0px #0001;
                transition: all 0.3s ease;
            }
            .btn-13:hover {
                color: #fff;
            }
            .btn-13:hover:after {
                top: 0;
                height: 100%;
            }
            .btn-13:active {
                top: 2px;
            }


            /* 14 */
            .btn-14 {
                background: rgb(255,151,0);
                border: none;
                z-index: 1;
            }
            .btn-14:after {
                position: absolute;
                content: "";
                width: 100%;
                height: 0;
                top: 0;
                left: 0;
                z-index: -1;
                border-radius: 5px;
                background-color: #eaf818;
                background-image: linear-gradient(315deg, #eaf818 0%, #f6fc9c 74%);
                box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
                    7px 7px 20px 0px rgba(0,0,0,.1),
                    4px 4px 5px 0px rgba(0,0,0,.1);
                transition: all 0.3s ease;
            }
            .btn-14:hover {
                color: #000;
            }
            .btn-14:hover:after {
                top: auto;
                bottom: 0;
                height: 100%;
            }
            .btn-14:active {
                top: 2px;
            }

            /* 15 */
            .btn-15 {
                background: #b621fe;
                border: none;
                z-index: 1;
            }
            .btn-15:after {
                position: absolute;
                content: "";
                width: 0;
                height: 100%;
                top: 0;
                right: 0;
                z-index: -1;
                background-color: #663dff;
                border-radius: 5px;
                box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
                    7px 7px 20px 0px rgba(0,0,0,.1),
                    4px 4px 5px 0px rgba(0,0,0,.1);
                transition: all 0.3s ease;
            }
            .btn-15:hover {
                color: #fff;
            }
            .btn-15:hover:after {
                left: 0;
                width: 100%;
            }
            .btn-15:active {
                top: 2px;
            }


            /* 16 */
            .btn-16 {
                border: none;
                color: #000;
            }
            .btn-16:after {
                position: absolute;
                content: "";
                width: 0;
                height: 100%;
                top: 0;
                left: 0;
                direction: rtl;
                z-index: -1;
                box-shadow:
                    -7px -7px 20px 0px #fff9,
                    -4px -4px 5px 0px #fff9,
                    7px 7px 20px 0px #0002,
                    4px 4px 5px 0px #0001;
                transition: all 0.3s ease;
            }
            .btn-16:hover {
                color: #000;
            }
            .btn-16:hover:after {
                left: auto;
                right: 0;
                width: 100%;
            }
            .btn-16:active {
                top: 2px;
            }
        </style>
        <link href="assets/css/reservationinformation.css" rel="stylesheet">
        <!-- =======================================================
        * Template Name: Medilab - v4.7.1
        * Template URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
    </head>

    <body>

        <!-- ======= Top Bar ======= -->
        <div id="topbar" class="d-flex align-items-center fixed-top">
            <div class="container d-flex justify-content-between">
                <div class="contact-info d-flex align-items-center">
                    <i class="bi bi-envelope"></i> <a href="mailto:contact@example.com">contact@example.com</a>
                    <i class="bi bi-phone"></i> +1 5589 55488 55
                </div>
                <div class="d-none d-lg-flex social-links align-items-center">
                    <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                    <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                    <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                    <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
                </div>
            </div>
        </div>

        <!-- ======= Header ======= -->
        <jsp:include page="assets/module/header.jsp" flush="true"/>
        <!-- End Header -->

        <main id="main" >

            <!-- ======= Breadcrumbs Section ======= -->
            <section class="breadcrumbs">
                <div class="container" style="margin-top: 100px">
                    <c:choose>
                        <c:when test="${sessionScope.cartMedicine.size() == 0 || sessionScope.cartMedicine ==  null}">
                            <div class="alert alert-warning text-center fs-3 " role="alert">
                                It seems your cart is Empty!!!
                                <div><a href="skin" class="btn-outline-success">Shopping Now</a></div>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Image</th>
                                        <th scope="col" style="max-width: 5px">Name</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">Total Price</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${carts}" var="c">
                                    <form action="addmedicinetocard" method="post">
                                        <input type="hidden" name="reservation_id" value="${reservation_id}">
                                        <input type="hidden" name="service_id" value="${service_id}">
                                        <input type="hidden" name="child_id" value="${child_id}">
                                        <tr>
                                        <input type="hidden" value="${c.value.medicine.getMedicine_id()}" name="medicine_id">
                                        <th scope="row">${c.value.medicine.getMedicine_id()}</th>
                                        <td><img src="./resouce/image/Medicine/${c.value.medicine.getMedicine_image()}" width="100px"></td>
                                        <td style="max-width: 150px">${c.value.medicine.getMedicine_name()}</td>
                                        <td>${c.value.medicine.getMedicine_price()}</td>
                                        <td><input onchange="this.form.submit()" type="number" value="${c.value.getQuantity()}" name="quantity"></td>
                                        <td>${c.value.medicine.getMedicine_price()*c.value.getQuantity()}$</td>
                                        <td><a href="deletemedicinecard?medicine_id=${c.value.medicine.getMedicine_id()}&reservation_id=${reservation_id}&service_id=${service_id}&child_id=${child_id}" class="btn btn-outline-danger"><i class="bi bi-trash3-fill"></i>Delete</a></td>
                                        </tr>
                                    </form>
                                </c:forEach>
                                </tbody>
                            </table>
                            <h3>Medicine Price : ${priceMedicine}$</h3>
                            <h3>Total Price : ${totalPrice}$</h3>

                        </c:otherwise>
                    </c:choose>
                    <form action="saveexamination">
                        <div style="padding-left: 87px;margin-top: 50px">
                            <div class="box-header">
                                <h2 class="btn btn-dark">Diagnosis</h2>
                                <input type="hidden" name="reservation_id" value="${reservation_id}">
                                <input type="hidden" name="service_id" value="${service_id}">
                                <input type="hidden" name="child_id" value="${child_id}">
                            </div>
                            <textarea name="diagnosis" placeholder="Diagnosis" cols="137" rows="5"></textarea>
                            <div>
                                <button type="submit" class="btn btn-success">Save Examination</button>
                            </div>
                        </div>
                    </form>

                    <div style="padding-left: 87px;margin-top: 50px"class="box-header row">
                        <h2 class="btn btn-dark col-md-2">List Medicine</h2>
                        <div class="col-md-8" >
                            <div class="row ">
                                <c:forEach items="${listCate}" var="c">
                                    <div class="col-md-2">
                                        <div class="frame">
                                            <button onclick="loadCate(this)" name="cate" value="${c.getMedicineCate_id()}" class="custom-btn btn-5"><span>${c.getMedicineCate_name()}</span></button>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div >
                                <nav class="navbar navbar-light bg-light w-100 "  style="display: block">
                                    <form class="form-inline">
                                        <div class="input-group input-group-sm">
                                            <input oninput="searchByName(this)" value="${txtS}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                                            <div class="input-group-append">
                                                <button style="border-radius: 0px" class="btn btn-secondary btn-number">
                                                    <i class="fa fa-search"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <ul id="content" class="cards">
                        <c:forEach items="${listMedicine}" var="i">
                            <li class="medicines">
                                <a href="" class="card">
                                    <img src="./resouce/image/Medicine/${i.getMedicine_image()}" height="100px" class="card__image" alt="" />
                                    <div class="card__overlay">
                                        <div class="card__header">
                                            <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                 
                                            <img class="card__thumb" src="https://i.imgur.com/sjLMNDM.png" alt="" />
                                            <div class="card__header-text">
                                                <h3 class="card__title">${i.getMedicine_name()}</h3>
                                                <span class="card__status">${i.getMedicine_price()}$</span>
                                            </div>          
                                        </div>
                                        <p class="card__description">${i.getMedinice_quantity()}</p>
                                    </div>
                                </a>
                                <div class="center-parent">
                                    <div class="center-me">
                                        <form action="addmedicinetocard">
                                            <input id="reservation_id" type="hidden" name="reservation_id" value="${reservation_id}">
                                            <input id="service_id" type="hidden" name="service_id" value="${service_id}">
                                            <input id="child_id" type="hidden" name="child_id" value="${child_id}">
                                            <input type="hidden" name="medicine_id" value="${i.getMedicine_id()}">
                                            <button type="submit" class="btn btn-success">Add medicine</button>
                                        </form>
                                    </div>
                                </div>
                            </li>   
                        </c:forEach>
                    </ul>
                </div>
            </section><!-- End Breadcrumbs Section -->
        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <jsp:include page="assets/module/footer.jsp" flush="true"/>
        <!-- End Footer -->

        <div id="preloader"></div>
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/purecounter/purecounter.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <script>
                                                function searchByName(param) {
                                                    var txtSearch = param.value;
                                                    var reservation_id = document.getElementById("reservation_id").value;
                                                    var service_id = document.getElementById("service_id").value;
                                                    var child_id = document.getElementById("child_id").value;
                                                    $.ajax({
                                                        url: "/project_swp391/searchmedicineajax",
                                                        type: "get", //send it through get method
                                                        data: {
                                                            txt: txtSearch,
                                                            reservation_id: reservation_id,
                                                            service_id: service_id,
                                                            child_id: child_id
                                                        },
                                                        success: function (data) {
                                                            var row = document.getElementById("content");
                                                            row.innerHTML = data;
                                                        },
                                                        error: function (xhr) {
                                                            //Do Something to handle error
                                                        }
                                                    });
                                                }
                                                function loadCate(data) {
                                                    var cate = data.value;
                                                    var reservation_id = document.getElementById("reservation_id").value;
                                                    var service_id = document.getElementById("service_id").value;
                                                    var child_id = document.getElementById("child_id").value;
                                                    $.ajax({
                                                        url: "/project_swp391/medicinebycate",
                                                        type: "get", //send it through get method
                                                        data: {
                                                            cate: cate,
                                                            reservation_id: reservation_id,
                                                            service_id: service_id,
                                                            child_id: child_id
                                                        },
                                                        success: function (data) {
                                                            var row = document.getElementById("content");
                                                            row.innerHTML = data;
                                                        },
                                                        error: function (xhr) {
                                                            //Do Something to handle error
                                                        }
                                                    });
                                                }

                                                $(document).ready(function () {
                                                    $(window).scroll(function () {
                                                        if ($(window).scrollTop() > $(document).height() - $(window).height() - 1) {
                                                            var amount = document.getElementsByClassName("medicines").length;
                                                            var reservation_id = document.getElementById("reservation_id").value;
                                                            var service_id = document.getElementById("service_id").value;
                                                            var child_id = document.getElementById("child_id").value;
                                                            $.ajax({
                                                                url: "/project_swp391/lazyloadingmedicine",
                                                                type: "get",
                                                                data: {
                                                                    exist: amount,
                                                                    reservation_id: reservation_id,
                                                                    service_id: service_id,
                                                                    child_id: child_id
                                                                },
                                                                success: function (data) {
                                                                    var row = document.getElementById("content");
                                                                    row.innerHTML += data;
                                                                }
                                                            });
                                                        }
                                                    });
                                                });

        </script>
    </body>

</html>