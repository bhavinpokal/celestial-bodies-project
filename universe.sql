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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_in_ly integer
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer NOT NULL,
    constellation character varying(20),
    mass numeric
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
    name character varying(30) NOT NULL,
    density real,
    diameter integer NOT NULL,
    rotation_period integer,
    is_spherical boolean,
    planet_id integer NOT NULL
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
    has_moon boolean,
    escape_velocity real,
    radius_in_km integer NOT NULL,
    mass integer,
    gas_type text,
    star_id integer NOT NULL
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
    mass numeric,
    radius integer,
    temperature numeric NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'NGC 4261', 100);
INSERT INTO public.blackhole VALUES (2, 'PKS 2201', 500);
INSERT INTO public.blackhole VALUES (3, 'NGC 332', 1100);
INSERT INTO public.blackhole VALUES (4, 'NGC 3204', 352);
INSERT INTO public.blackhole VALUES (5, 'PKS 3698', 1253);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 3, 'Andromeda', 1000);
INSERT INTO public.galaxy VALUES (2, 'Black Eye Galaxy', 5, 'Coma Berenices', 1000);
INSERT INTO public.galaxy VALUES (3, 'Bodes Galaxy', 12, 'Ursa Major', 1000);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel Galaxy', 500, 'Sculptor', 1000);
INSERT INTO public.galaxy VALUES (5, 'Cigar Galaxy', 12, 'Ursa Major', 1000);
INSERT INTO public.galaxy VALUES (6, 'Comet Galaxy', 320, 'Sculptor', 1000);
INSERT INTO public.galaxy VALUES (7, 'Hoags Object', 150, 'Serpens Caput', 1000);
INSERT INTO public.galaxy VALUES (8, 'Milky Way', 0, 'Orion', 1000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3520, 65200, 365, true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 525, 332, 975, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 7789, 1234, 948, true, 4);
INSERT INTO public.moon VALUES (4, 'Jupiter I', 4462, 652, 997, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 965, 553, 785, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 9874, 445, 852, false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 9985, 795, 879, false, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 856, 658, 758, true, 5);
INSERT INTO public.moon VALUES (9, 'Himalia', 896, 666, 888, true, 5);
INSERT INTO public.moon VALUES (10, 'Mimas', 887, 665, 658, true, 6);
INSERT INTO public.moon VALUES (11, 'Enceladus', 785, 662, 985, false, 6);
INSERT INTO public.moon VALUES (12, 'Tethys', 985, 684, 1000, false, 6);
INSERT INTO public.moon VALUES (13, 'Titan', 999, 1234, 52, false, 6);
INSERT INTO public.moon VALUES (14, 'Ariel', 2221, 1114, 385, true, 7);
INSERT INTO public.moon VALUES (15, 'Umbriel', 1243, 229, 365, false, 7);
INSERT INTO public.moon VALUES (16, 'Titania', 983, 3420, 410, true, 7);
INSERT INTO public.moon VALUES (17, 'Triton', 8874, 2210, 520, true, 8);
INSERT INTO public.moon VALUES (18, 'Nereid', 785, 2254, 555, false, 8);
INSERT INTO public.moon VALUES (19, 'Haumea', 8852, 663, 999, true, 10);
INSERT INTO public.moon VALUES (20, 'Eris', 7785, 985, 785, false, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Venus', false, 225, 3325, 332, 'CO2', 13);
INSERT INTO public.planet VALUES (2, 'Mercury', false, 332, 652, 3362, 'CO', 13);
INSERT INTO public.planet VALUES (3, 'Earth', true, 550, 3333, 6523, 'Ozone', 13);
INSERT INTO public.planet VALUES (4, 'Mars', true, 666, 3216, 6652, 'CO2', 13);
INSERT INTO public.planet VALUES (5, 'Jupiter', true, 985, 9985, 36958, 'H2O', 13);
INSERT INTO public.planet VALUES (6, 'Saturn', true, 865, 88852, 36985, 'Helium', 13);
INSERT INTO public.planet VALUES (7, 'Uranus', true, 8850, 36548, 56420, 'SO2', 13);
INSERT INTO public.planet VALUES (8, 'Neptune', true, 332, 8854, 4423, 'S2O', 13);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 442, 321, 3216, 'NA', 13);
INSERT INTO public.planet VALUES (10, '11 Comae Berenices B', true, 42, 321, 445, 'O2', 3);
INSERT INTO public.planet VALUES (11, '14 Andromedae B', false, 321, 452, 552, 'Ozone', 2);
INSERT INTO public.planet VALUES (12, '42 Draconis B', false, 32, 555, 774, 'CO2', 6);
INSERT INTO public.planet VALUES (13, '75 Ceti B', false, 987, 963, 8521, 'CO2', 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha And', 97, 2, 21, 1);
INSERT INTO public.star VALUES (2, 'Beta And', 199, 2, 43, 1);
INSERT INTO public.star VALUES (3, '51 And', 174, 4, 51, 2);
INSERT INTO public.star VALUES (4, 'o And', 692, 4, 1, 2);
INSERT INTO public.star VALUES (5, 'Lamba And', 84, 4, 16, 3);
INSERT INTO public.star VALUES (6, 'Mu And', 136, 4, 37, 3);
INSERT INTO public.star VALUES (7, 'Zeta And', 181, 4, 34, 4);
INSERT INTO public.star VALUES (8, 'Upsilon And', 44, 4, 50, 4);
INSERT INTO public.star VALUES (9, 'Kappa And', 170, 4, 19, 5);
INSERT INTO public.star VALUES (10, 'Phi And', 736, 4, 42, 5);
INSERT INTO public.star VALUES (11, 'Iota And', 502, 4, 17, 6);
INSERT INTO public.star VALUES (12, 'Pi And', 656, 4, 29, 6);
INSERT INTO public.star VALUES (13, 'Sun', 1234, 440002, 333425, 8);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


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
