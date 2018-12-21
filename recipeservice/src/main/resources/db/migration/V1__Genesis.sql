CREATE TABLE recipe(
	id BIGSERIAL,
	title VARCHAR(256),
	url VARCHAR(256),
	image_url VARCHAR(256),
	ingredients VARCHAR(1024),
	cooking_time integer,
	search_tokens tsvector,

	PRIMARY KEY(id)
);

INSERT INTO public.recipe VALUES (33, 'Kycklingrullader', 'https://www.ica.se/recept/kycklingrullader-724405/', 'www.ica.se/imagevaultfiles/id_190676/cf_5291/kycklingrullader.jpg', 'gul lök, smör, kryddnejlika, salt, peppar, fikon, mandel, kapris, kyckling, smör, cumberlandsås, sallad', 45, NULL);
INSERT INTO public.recipe VALUES (34, 'Tjocka revbensspjäll med asiatisk kålsallad', 'https://www.ica.se/recept/tjocka-revbensspjall-med-asiatisk-kalsallad-724402/', 'www.ica.se/imagevaultfiles/id_190629/cf_5291/tjocka_revbensspjall_med_asiatisk_kalsallad.jpg', 'revbensspjäll, balsamvinäger, honung, soja, olja, svartpeppar, ingefära, sesamfrö, salladskål, chili, morot, koriander, lime, olja, sesamolja, honung, ättika, salt, böngrodd', 90, NULL);
INSERT INTO public.recipe VALUES (35, 'Helstekt Bosarpkyckling fylld med ingefära och äpple', 'https://www.ica.se/recept/helstekt-bosarpkyckling-fylld-med-ingefara-och-apple-724468/', 'www.ica.se/imagevaultfiles/id_191354/cf_5291/helstekt_bosarpkyckling_fylld_med_ingefara_och_apple.jpg', 'ingefära, gul lök, äpple, timjan, olivolja, kyckling, salt, peppar, vatten, grädde, majsstärkelse, potatis, grönkålssallad', 90, NULL);
INSERT INTO public.recipe VALUES (36, 'Vegetarisk bourguignon ', 'https://www.ica.se/recept/vegetarisk-bourguignon-724701/', 'www.ica.se/imagevaultfiles/id_190831/cf_5291/vegetarisk_bourguignon_.jpg', 'schalottenlök, vitlök, rödbeta, morot, palsternacka, olja, timjan, tomatpuré, salt, svartpeppar, vin, grönsaksbuljongtärning, vatten, lagerblad, portabellosvamp, majsstärkelse, vatten, timjan, jordärtskocka, potatis, havregrädde, matfett, salt, svartpeppar, muskotnöt', 90, NULL);
INSERT INTO public.recipe VALUES (37, 'Kycklingköttbullar till jul', 'https://www.ica.se/recept/kycklingkottbullar-till-jul-724413/', 'www.ica.se/imagevaultfiles/id_190706/cf_5291/kycklingkottbullar_till_jul.jpg', 'ströbröd, vispgrädde, kycklingfärs, salt, kryddpeppar, kryddnejlika, ägg, dijonsenap, smör, olja', 30, NULL);
INSERT INTO public.recipe VALUES (38, 'Varmrökt lax med picklade senapsfrön', 'https://www.ica.se/recept/varmrokt-lax-med-picklade-senapsfron-724689/', 'www.ica.se/imagevaultfiles/id_190953/cf_5291/varmrokt_lax_med_picklade_senapsfron.jpg', 'babyspenat, lax, ägg, vatten, strösocker, ättiksprit, rödbeta, senapsfrö', 90, NULL);
INSERT INTO public.recipe VALUES (39, 'Kycklingjulskinka med kålrabbisallad', 'https://www.ica.se/recept/kycklingjulskinka-med-kalrabbisallad-724494/', 'www.ica.se/imagevaultfiles/id_190708/cf_5291/kycklingjulskinka_med_kalrabbisallad.jpg', 'ingefära, senap, honung, äggula, ströbröd, kycklingjulskinka, majsstärkelse, kålrabbi, äpple, apelsin, granatäppelkärna, rödvinsvinäger, olivolja, dijonsenap, salt, peppar, gräslök', 30, NULL);
INSERT INTO public.recipe VALUES (40, 'Vegansk paj med svamp och zucchini', 'https://www.ica.se/recept/vegansk-paj-med-svamp-och-zucchini-724410/', 'www.ica.se/imagevaultfiles/id_190398/cf_5291/vegansk_paj_med_svamp_och_zucchini.jpg', 'margarin, dinkelmjöl, vatten, salt, rödlök, vitlöksklyfta, zucchini, kastanjechampinjon, olivolja, timjan, salt, svartpeppar, havregrädde, majsstärkelse, ost, sallad', 60, NULL);
INSERT INTO public.recipe VALUES (41, 'Köttbullar med rostad lök', 'https://www.ica.se/recept/kottbullar-med-rostad-lok-724687/', 'www.ica.se/imagevaultfiles/id_190404/cf_5291/kottbullar_med_rostad_lok.jpg', 'blandfärs, lök, ägg, dijonsenap, salt, svartpeppar, rapsolja, smör', 30, NULL);
INSERT INTO public.recipe VALUES (42, 'Vegansk tacofärs på nötter', 'https://www.ica.se/recept/vegansk-tacofars-pa-notter-724458/', 'www.ica.se/imagevaultfiles/id_188587/cf_5291/vegansk_tacofars_pa_notter.jpg', 'sötmandel, cashewnöt, solroskärna, taco kryddmix, tomatpuré, rapsolja, vatten', 90, NULL);
INSERT INTO public.recipe VALUES (43, 'Gyoza med tofu, shiitakesvamp och ingefära', 'https://www.ica.se/recept/gyoza-med-tofu-shiitakesvamp-och-ingefara-724444/', 'www.ica.se/imagevaultfiles/id_188317/cf_5291/gyoza_med_tofu__shiitakesvamp_och_ingefara.jpg', 'sesamolja, vitlöksklyfta, ingefära, strösocker, japansk soja, majsstärkelse, tofu, shiitakesvamp, salladslök, wontondeg', 45, NULL);
INSERT INTO public.recipe VALUES (44, 'Lövbiff med potatisgratäng och cosmopolitansallad', 'https://www.ica.se/recept/lovbiff-med-potatisgratang-och-cosmopolitansallad-724483/', 'www.ica.se/imagevaultfiles/id_188134/cf_5291/lovbiff_med_potatisgratang_och_cosmopolitansallad.jpg', 'potatisgratäng, cosmopolitansallad, rödlök, olja, rödvinsvinäger, dijonsenap, lövbiff, olja, salt, peppar', 30, NULL);
INSERT INTO public.recipe VALUES (45, 'Kolbulle', 'https://www.ica.se/recept/kolbulle-724260/', 'www.ica.se/imagevaultfiles/id_186563/cf_5291/kolbulle.jpg', 'vatten, vetemjöl, salt, fläsk, lingonsylt', 30, NULL);
INSERT INTO public.recipe VALUES (46, 'Ärtrisotto med rostad lök och stekt kapris', 'https://www.ica.se/recept/artrisotto-med-rostad-lok-och-stekt-kapris-724312/', 'www.ica.se/imagevaultfiles/id_186038/cf_5291/artrisotto_med_rostad_lok_och_stekt_kapris.jpg', 'vatten, buljongtärning, gul lök, smör, risottoris, ärta, ost, salt, svartpeppar, kapris, rostad lök, persilja', 30, NULL);
INSERT INTO public.recipe VALUES (47, 'Snabblagad pizza med tacotopping', 'https://www.ica.se/recept/snabblagad-pizza-med-tacotopping-724265/', 'www.ica.se/imagevaultfiles/id_189306/cf_5291/snabblagad_pizza_med_tacotopping.jpg', 'cocktailtomat, majs, pizza, nachochips', 30, NULL);
INSERT INTO public.recipe VALUES (48, 'Pizza med pesto, mozzarella, salsiccia och tomatsallad', 'https://www.ica.se/recept/pizza-med-pesto-mozzarella-salsiccia-och-tomatsallad-724268/', 'www.ica.se/imagevaultfiles/id_189317/cf_5291/pizza_med_pesto__mozzarella__salsiccia_och_tomatsallad.jpg', 'salsiccia, olja, körsbärstomat, bananschalottenlök, rödvinsvinäger, olivolja, salt, svartpeppar, pizza, basilikablad', 30, NULL);
