--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    number_of_planets_in_millions integer,
    biggest_planet text,
    date_of_discovery date
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: meteor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor (
    meteor_id integer NOT NULL,
    name character varying NOT NULL,
    velocity_in_km_per_h integer
);


ALTER TABLE public.meteor OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer,
    mass_in_earth_masses numeric(4,3),
    orbital_velocity_in_km_per_sec numeric(4,2)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    star_id integer,
    radius_length_in_kilometers integer,
    has_ice_on_surface boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer,
    has_orbiting_planets boolean,
    size_classification text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Wornos', 31284, 'XZ-27', '1990-06-30');
INSERT INTO public.galaxy VALUES (2, 'Galto', 53720, 'P-08', '1992-08-01');
INSERT INTO public.galaxy VALUES (3, 'Tras', 47495, 'RR-0039', '1933-01-02');
INSERT INTO public.galaxy VALUES (4, 'Ulite', 60375, 'TRAIL-9', '1989-02-27');
INSERT INTO public.galaxy VALUES (5, 'Halard', 19050, 'QR-4', '1940-04-11');
INSERT INTO public.galaxy VALUES (6, 'Crilos', 31284, 'XZ-27', '2001-12-13');


--
-- Data for Name: meteor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor VALUES (1, 'B-0078', 31422);
INSERT INTO public.meteor VALUES (2, 'R-0236', 50711);
INSERT INTO public.meteor VALUES (3, 'G-0165', 27402);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'PIN-434', 12, 4.633, 24.68);
INSERT INTO public.moon VALUES (2, 'TAL-263', 7, 7.374, 33.01);
INSERT INTO public.moon VALUES (3, 'REX-385', 8, 2.584, 30.58);
INSERT INTO public.moon VALUES (4, 'FEL-574', 1, 8.354, 27.09);
INSERT INTO public.moon VALUES (5, 'VIR-193', 9, 6.494, 32.67);
INSERT INTO public.moon VALUES (6, 'WEL-937', 8, 2.395, 31.45);
INSERT INTO public.moon VALUES (7, 'ALK-538', 11, 7.395, 25.98);
INSERT INTO public.moon VALUES (8, 'MIP-643', 1, 9.463, 23.56);
INSERT INTO public.moon VALUES (9, 'ZIL-233', 2, 5.357, 33.08);
INSERT INTO public.moon VALUES (10, 'BAT-373', 12, 7.468, 22.70);
INSERT INTO public.moon VALUES (11, 'FAN-867', 6, 6.498, 30.91);
INSERT INTO public.moon VALUES (12, 'DAY-296', 4, 5.866, 29.35);
INSERT INTO public.moon VALUES (13, 'YOV-914', 7, 4.805, 23.60);
INSERT INTO public.moon VALUES (14, 'MAX-857', 3, 2.035, 29.29);
INSERT INTO public.moon VALUES (15, 'URN-183', 11, 7.458, 24.03);
INSERT INTO public.moon VALUES (16, 'TAP-429', 5, 3.357, 25.00);
INSERT INTO public.moon VALUES (17, 'SAZ-683', 10, 2.470, 28.51);
INSERT INTO public.moon VALUES (18, 'IVY-789', 1, 8.436, 34.58);
INSERT INTO public.moon VALUES (19, 'HIF-537', 10, 4.395, 32.96);
INSERT INTO public.moon VALUES (20, 'CAB-235', 6, 9.047, 20.55);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Sinalet', 3, 3657, false);
INSERT INTO public.planet VALUES (2, 'Himal', 4, 9473, true);
INSERT INTO public.planet VALUES (3, 'Gremdel', 1, 7284, false);
INSERT INTO public.planet VALUES (4, 'Yocard', 1, 5836, true);
INSERT INTO public.planet VALUES (5, 'Siroid', 3, 4284, true);
INSERT INTO public.planet VALUES (6, 'Velapario', 6, 2034, true);
INSERT INTO public.planet VALUES (7, 'Crimistis', 5, 3940, false);
INSERT INTO public.planet VALUES (8, 'Qualinon', 6, 6084, false);
INSERT INTO public.planet VALUES (9, 'Ingoros', 6, 4983, true);
INSERT INTO public.planet VALUES (10, 'Blopelx', 2, 5937, false);
INSERT INTO public.planet VALUES (11, 'Yechex', 5, 9284, true);
INSERT INTO public.planet VALUES (12, 'Florosine', 2, 8983, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Opus-2', 2, true, 'Blue Giant');
INSERT INTO public.star VALUES (2, 'Rallumus-11', 4, true, 'Yellow Dwarf');
INSERT INTO public.star VALUES (3, 'Tagalaz-93', 3, false, 'Blue Supergiant');
INSERT INTO public.star VALUES (4, 'Xamal-4', 1, false, 'Red Dwarf');
INSERT INTO public.star VALUES (5, 'Ultum-89', 6, true, 'Red Hypergiant');
INSERT INTO public.star VALUES (6, 'Enzelem-333', 5, true, 'Orange Giant');


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteor meteor_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_name_key UNIQUE (name);


--
-- Name: meteor meteor_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_pkey PRIMARY KEY (meteor_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

