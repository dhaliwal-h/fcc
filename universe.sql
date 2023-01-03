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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    code character varying(3) NOT NULL
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    distance_from_earth_billion_km numeric(8,3),
    planet_id integer
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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    distance_from_earth_billion_km numeric(8,3),
    star_id integer
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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy in which our solar system exists. The name describes how it is seen from earth as a band of stars', 13610, true);
INSERT INTO public.galaxy VALUES (2, 'Canix Major Dwarf', 'This galaxy is a diputed galaxy in our local group', 6000, false);
INSERT INTO public.galaxy VALUES (3, 'Some gal', 'This is an imaginary galaxy I do not need to be accurate to learn psql', 90000, true);
INSERT INTO public.galaxy VALUES (4, 'Number gola', 'This is galaxy is where the number systems does not exist only golas does which I do not know what is ', 2000, false);
INSERT INTO public.galaxy VALUES (5, 'Neo gemi', 'This is famous for alien restaurents. only couple of light years away from us.', 12000, true);
INSERT INTO public.galaxy VALUES (6, 'Real One', 'This is beleived to be existed as the first and only galaxy in the universer', 999999, false);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'spherical', 'sph');
INSERT INTO public.galaxy_type VALUES (2, 'spiral', 'spi');
INSERT INTO public.galaxy_type VALUES (3, 'ribbon', 'rib');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', 'a', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'b', 'b', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'c', 'c', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'd', 'd', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, 'e', 'e', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (6, 'f', 'f', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, 'g', 'g', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (8, 'h', 'h', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (9, 'i', 'i', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (10, 'j', 'j', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (11, 'moon', 'This is our moon', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'k', 'k', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (13, 'l', 'l', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (14, 'm', 'm', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (15, 'n', 'n', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (16, 'o', 'o', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (17, 'p', 'p', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (18, 'q', 'q', NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (19, 'r', 's', NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (20, 's', 'r', NULL, NULL, NULL, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Canix Major Dwarf Star', 'This star is part of  a diputed galaxy in our local group', 2000, false, NULL, 2);
INSERT INTO public.planet VALUES (2, 'Some start gal', 'This is an imaginary star I do not need to be accurate to learn psql', 900, true, NULL, 3);
INSERT INTO public.planet VALUES (3, 'Number gola star', 'This star is where the number systems does not exist only golas does which I do not know what is ', 1500, false, NULL, 4);
INSERT INTO public.planet VALUES (4, 'Neo gemi', 'This is famous for alien restaurents. only couple of light yasdfears away from us.', 1200, true, NULL, 5);
INSERT INTO public.planet VALUES (5, 'Real One', 'This is beleived to be existed as the first and only star in the our galaxy', 9999, false, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Earth', 'This is the planet on which we live', 5000, true, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Canix', 'This star is part of  a diputed galaxy in our local group', 2000, false, NULL, 2);
INSERT INTO public.planet VALUES (8, 'Some', 'This is an imaginary star I do not need to be accurate to learn psql', 900, true, NULL, 3);
INSERT INTO public.planet VALUES (9, 'Number', 'This star is where the number systems does not exist only golas does which I do not know what is ', 1500, false, NULL, 4);
INSERT INTO public.planet VALUES (10, 'Mars', 'This is famous for alien restaurents. only couple of light yasdfears away from us.', 1200, true, NULL, 5);
INSERT INTO public.planet VALUES (11, 'Mercury', 'This is beleived to be existed as the first and only star in the our galaxy', 9999, false, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Venus', 'This is the planet next to on which we live', 5000, true, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Canix Major Dwarf Star', 'This star is part of  a diputed galaxy in our local group', 2000, false, 2);
INSERT INTO public.star VALUES (2, 'Some start gal', 'This is an imaginary star I do not need to be accurate to learn psql', 900, true, 3);
INSERT INTO public.star VALUES (3, 'Number gola star', 'This star is where the number systems does not exist only golas does which I do not know what is ', 1500, false, 4);
INSERT INTO public.star VALUES (4, 'Neo gemi', 'This is famous for alien restaurents. only couple of light yasdfears away from us.', 1200, true, 5);
INSERT INTO public.star VALUES (5, 'Real One', 'This is beleived to be existed as the first and only star in the our galaxy', 9999, false, 1);
INSERT INTO public.star VALUES (6, 'Sun', 'This is the star around which our earth rotates', 5000, true, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 3, true);


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
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


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

