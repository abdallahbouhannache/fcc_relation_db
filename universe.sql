--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    age_in_million_years integer NOT NULL,
    diametre numeric,
    earth_types integer,
    age_in_millions_of_years integer,
    has_human boolean,
    has_black_hole boolean
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    age_in_million_years integer NOT NULL,
    diametre numeric,
    galaxy_types integer,
    age_in_millions_of_years integer,
    discovered_by_human boolean,
    has_black_hole boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    name character varying(255) NOT NULL,
    description text,
    distance_from_planet numeric,
    gravity_level integer,
    temps_in_fehrenheit integer,
    is_spherical boolean,
    has_gaz_layer boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    name character varying(255) NOT NULL,
    description text,
    planet_size numeric,
    age_in_million_years integer,
    distance_from_earth integer,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(255) NOT NULL,
    description text,
    light_intensity numeric,
    age_in_million_years integer,
    temps_in_fahrenheit integer,
    discovered_by_human boolean,
    is_spherical boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'Earth 1', 'This is the first Earth', 5, 12756, 1, 4540, true, false);
INSERT INTO public.earth VALUES (2, 'Earth 2', 'This is the second Earth', 5, 12756, 1, 4540, true, false);
INSERT INTO public.earth VALUES (3, 'Earth 3', 'This is the third Earth', 5, 12756, 1, 4540, true, false);
INSERT INTO public.earth VALUES (4, 'Earth 4', 'This is the fourth Earth', 5, 12756, 1, 4540, true, false);
INSERT INTO public.earth VALUES (5, 'Earth 5', 'This is the fifth Earth', 5, 12756, 1, 4540, true, false);
INSERT INTO public.earth VALUES (6, 'Earth 6', 'This is the sixth Earth', 5, 12756, 1, 4540, true, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', 'This is the first galaxy', 100, 1000.50, 1, 200, true, false);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', 'This is the second galaxy', 200, 1500.75, 2, 300, true, true);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', 'This is the third galaxy', 100, 1200.25, 1, 250, false, true);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', 'This is the third galaxy', 120, 1200.25, 1, 250, false, true);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', 'This is the third galaxy', 170, 1200.25, 1, 250, false, true);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', 'This is the third galaxy', 190, 1200.25, 1, 250, false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, 'Moon 1', 'Description 1', 100, 1, 32, true, false);
INSERT INTO public.moon VALUES (2, NULL, 'Moon 2', 'Description 2', 200, 2, 40, true, true);
INSERT INTO public.moon VALUES (3, NULL, 'Moon 3', 'Description 3', 300, 3, 50, true, false);
INSERT INTO public.moon VALUES (4, NULL, 'Moon 4', 'Description 4', 400, 4, 60, true, true);
INSERT INTO public.moon VALUES (5, NULL, 'Moon 5', 'Description 5', 500, 5, 70, true, false);
INSERT INTO public.moon VALUES (6, NULL, 'Moon 6', 'Description 6', 600, 6, 80, true, true);
INSERT INTO public.moon VALUES (7, NULL, 'Moon 7', 'Description 7', 700, 7, 90, true, false);
INSERT INTO public.moon VALUES (8, NULL, 'Moon 8', 'Description 8', 800, 8, 100, true, true);
INSERT INTO public.moon VALUES (9, NULL, 'Moon 9', 'Description 9', 900, 9, 110, true, false);
INSERT INTO public.moon VALUES (10, NULL, 'Moon 10', 'Description 10', 1000, 10, 120, true, true);
INSERT INTO public.moon VALUES (11, NULL, 'Moon 11', 'Description 11', 1100, 11, 130, true, false);
INSERT INTO public.moon VALUES (12, NULL, 'Moon 12', 'Description 12', 1200, 12, 140, true, true);
INSERT INTO public.moon VALUES (13, NULL, 'Moon 13', 'Description 61', 150, 1, 32, true, false);
INSERT INTO public.moon VALUES (14, NULL, 'Moon 14', 'Description 02', 240, 2, 40, true, true);
INSERT INTO public.moon VALUES (15, NULL, 'Moon 15', 'Description 11', 340, 3, 50, true, false);
INSERT INTO public.moon VALUES (16, NULL, 'Moon 16', 'Description 41', 410, 4, 60, true, true);
INSERT INTO public.moon VALUES (17, NULL, 'Moon 17', 'Description 50', 570, 5, 70, true, false);
INSERT INTO public.moon VALUES (18, NULL, 'Moon 18', 'Description 76', 620, 6, 80, true, true);
INSERT INTO public.moon VALUES (19, NULL, 'Moon 19', 'Description 97', 790, 7, 90, true, false);
INSERT INTO public.moon VALUES (20, NULL, 'Moon 20', 'Description 58', 830, 8, 100, true, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, 'Mercury', 'Small rocky planet', 0.055, 5, 58, false);
INSERT INTO public.planet VALUES (2, NULL, 'Venus', 'Hot and toxic atmosphere', 0.815, 5, 108, false);
INSERT INTO public.planet VALUES (3, NULL, 'Earth', 'Home to humans', 1, 5, 150, true);
INSERT INTO public.planet VALUES (4, NULL, 'Mars', 'Red planet', 0.107, 5, 228, false);
INSERT INTO public.planet VALUES (5, NULL, 'Jupiter', 'Giant gas planet', 317.8, 5, 778, false);
INSERT INTO public.planet VALUES (6, NULL, 'Saturn', 'Ringed planet', 95.2, 5, 1427, false);
INSERT INTO public.planet VALUES (7, NULL, 'Uranus', 'Ice giant', 14.6, 5, 2871, false);
INSERT INTO public.planet VALUES (8, NULL, 'Neptune', 'Blue planet', 17.2, 5, 4497, false);
INSERT INTO public.planet VALUES (9, NULL, 'Pluto', 'Dwarf planet', 0.002, 5, 5906, false);
INSERT INTO public.planet VALUES (10, NULL, 'Kepler-452b', 'Potentially habitable exoplanet', 1.63, 6, 1400, true);
INSERT INTO public.planet VALUES (11, NULL, 'Proxima Centauri b', 'Closest known exoplanet', 0.17, 6, 4, true);
INSERT INTO public.planet VALUES (12, NULL, 'TRAPPIST-1d', 'Exoplanet in TRAPPIST-1 system', 0.297, 6, 40, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, 'Star 1', 'Description 1', 1000, 500, 6000, true, true);
INSERT INTO public.star VALUES (2, NULL, 'Star 2', 'Description 2', 2000, 600, 7000, false, false);
INSERT INTO public.star VALUES (3, NULL, 'Star 3', 'Description 3', 3000, 700, 8000, true, true);
INSERT INTO public.star VALUES (4, NULL, 'Star 4', 'Description 4', 4000, 800, 9000, false, false);
INSERT INTO public.star VALUES (5, NULL, 'Star 5', 'Description 5', 5000, 900, 10000, true, true);
INSERT INTO public.star VALUES (6, NULL, 'Star 6', 'Description 6', 6000, 1000, 11000, true, false);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


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

