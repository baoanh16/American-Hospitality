$(document).ready(function () {
	// Viết Script ở đây!
	activeMobileMenu();
	swiperInit();



	//Breadcrumb title
	let breadcrumbValue = $('.afm-breadcrumb ol li:last-child').text();
	$('.breadcrumb-title h2').html(breadcrumbValue);
	//lightGallery Init
	$('.lightgallery').lightGallery({
		thumbnail: true,
	});
	//Tweenty image init

	$(".home-collection-image-wrapper").twentytwenty({
		default_offset_pct: 0.65,
		before_label: '',
		after_label: '',
		no_overlay: true,
	});
	//Init Titl JS
	const tilt = $('.js-tilt').tilt({
		speed: 400,
		maxTilt: 25,
		perspective: 300,
	});
	//INput wrap form remove label
	$('.wrap-form inptut').on('blur', function () {
		let checkLabel = $('this').val();
		if (checkLabel.length() === 0) {} else {
			$(this).parent('form-group').find('label').css({
				"display": "none;"
			})
		}

	})
	//Footer hover active
	$('footer.afm-footer').on("mouseenter mouseleave click", function () {
		$(this).toggleClass('active-open')

	})

	$('.product-sidebar-list li.has-sub').each(function () {
		$(this).click(function (e) {
			$(this).toggleClass('open')
			$('.product-sidebar-list li.has-sub').not($(this)).removeClass('open')
		})
	});

	//FullpageJS
	if ($(window).width() < 1200) {
		$('#fullpage').removeAttr('id');
	}

	new fullpage('#fullpage', {
		//options here
		licenseKey: 'A3DA879C-B1254377-8A906973-AAE812EA',
		paddingBottom: 0,
		anchors: ['firstPage', 'secondPage', 'thirdPage', 'fourthPage', 'lastPage'],
		paddingTop: 0,
		menu: "#home-nav",
		afterLoad: function () {
			let homeCollection = new Swiper('.afm-home-collection .swiper-container', {
				speed: 750,
				spaceBetween: 0,
				loop: true,
				allowTouchMove: false,
				slidesPerView: 1,
				effect: 'fade',
				fadeEffect: {
					crossFade: true
				},
				pagination: {
					clickable: true,
					el: '.swiper-pagination.collection-pagination-wrapper',
					renderBullet: function (index, className) {
						var menu = [];
						$(".afm-home-collection .swiper-container .swiper-slide").each(function (i) {
							menu.push($(this).data("name"));
						});
						return '<span class="' +
							className + '">' +
							(menu[index]) + '<a class="svg-link-button"><svg height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><rect class="svg-link-rect" height="1em" width="1em"></rect></svg></a>' + '</span>';
					},
				}

			});
			// Experiment

			let homeSwiper = new Swiper('.afm-home-swiper .swiper-container', {
				speed: 750,
				spaceBetween: 0,
				loop: true,
				slidesPerView: 1,

				pagination: {
					clickable: true,
					el: '.swiper-pagination.home-pagination',
				},
				breakpointsInverse: true,
				breakpoints: {
					// when window width is >= 320px
					0: {
						slidesPerView: 1,
						allowSlidePrev: true,
						allowSlideNext: true,
						touchRatio: 1
					},

					// when window width is >= 640px
					1025: {
						slidesPerView: 1,
						touchRatio: 0
					}
				}

			});

		},
	});

});


function activeMobileMenu() {
	$('header.afm-header-cc .mobile-toggle').on('click', function () {
		console.log("click mobile");
		$('header.afm-header-cc .main-nav').toggleClass('active')

	})

}

function swiperInit() {








	let weDoSwiper = new Swiper('.we-do-swiper .swiper-container', {
		speed: 750,
		slidesPerView: 1,
		navigation: {
			nextEl: '.we-do-next',
			prevEl: '.we-do-prev',
		},

		breakpoints: {
			// when window width is >= 320px
			320: {
				spaceBetween: 0
			},
			// when window width is >= 480px
			576: {
				autoplay: {
					delay: 2000,
				},
				spaceBetween: 20
			},
			// when window width is >= 640px
			1025: {
				spaceBetween: 20
			},
			1920: {
				spaceBetween: 40
			}
		}

	});
	let AboutOurTeam = new Swiper('.about-our-team .swiper-container', {
		speed: 750,
		spaceBetween: 100,
		autoplay: {
			delay: 2000,
		},
		breakpointsInverse: true,
		navigation: {
			nextEl: '.team-navigation-next',
			prevEl: '.team-navigation-prev',
		},
		breakpoints: {
			// when window width is >= 320px
			320: {
				spaceBetween: 10,
				slidesPerView: 2,
			},
			// when window width is >= 480px
			768: {

				spaceBetween: 20,
				slidesPerView: 3,
			},
			// when window width is >= 640px
			1025: {
				spaceBetween: 20,
				slidesPerView: 4,

			}
		}
	});
	let aboutUsSwiper = new Swiper('.about-us-swiper .swiper-container', {
		speed: 750,
		spaceBetween: 200,
		slidesPerView: 1,
		navigation: {
			nextEl: '.about-us-next',
			prevEl: '.about-us-prev',
		},

	});
	let productDetailSwiper = new Swiper('.product-others .swiper-container', {
		speed: 750,
		spaceBetween: 200,
		slidesPerView: 4,
		breakpointsInverse: true,
		breakpoints: {
			// when window width is >= 320px
			320: {
				spaceBetween: 10,
				slidesPerView: 1,
			},
			// when window width is >= 480px
			576: {

				spaceBetween: 20,
				slidesPerView: 2,
			},
			768: {

				spaceBetween: 20,
				slidesPerView: 3,
			},
			// when window width is >= 640px
			1025: {
				spaceBetween: 30,
				slidesPerView: 4,

			}
		}

	});
	let gallerySwiper = new Swiper('.afm-gallery-swiper .swiper-container', {
		speed: 750,
		spaceBetween: 200,
		breakpointsInverse: true,
		centeredSlides: true,
		autoplay: {
			delay: 2500,
		},
		navigation: {
			nextEl: '.gallery-next',
			prevEl: '.gallery-prev',
		},
		breakpoints: {
			// when window width is >= 320px

			320: {
				slidesPerView: 1,
				spaceBetween: 0,
				centeredSlides: false,

			},
			// when window width is >= 640px
			1025: {
				autoplay: false,
				spaceBetween: 0,
				slidesPerView: 1.3,

			}
		}

	});
	let newsOthers = new Swiper('.news-other-swiper .swiper-container', {
		speed: 750,
		spaceBetween: 200,
		autoplay: {
			delay: 2500,
		},
		navigation: {
			nextEl: '.gallery-next',
			prevEl: '.gallery-prev',
		},
		breakpointsInverse: true,
		breakpoints: {
			// when window width is >= 320px

			440: {
				slidesPerView: 2,
				spaceBetween: 30,

			},
			// when window width is >= 640px
			768: {
				spaceBetween: 30,
				slidesPerView: 3,

			}

		}

	});


}

function productFilter() {
	// let productFilter= $('.filter-top-wrapper .select-filter-list .has-sub')
	// var selection = $(this).text();
	// var dataValue = $(this).attr('data-value');
	// $('.default-select-options span').text(selection);
	// $('.footer-mobile-contact-options').attr('data-selected-value', dataValue);

}