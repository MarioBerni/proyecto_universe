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
    galaxy_galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer
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

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_moon_id integer NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    planet_id integer,
    is_spherical boolean NOT NULL
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

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    star_star_id integer NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    start_id integer,
    planet_star_id integer
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

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.star_star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    star_galaxy_id integer
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

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_star_id;


--
-- Name: galaxy galaxy_galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet star_star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_star_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', 'Description of Galaxy 1', true, 100);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', 'Description of Galaxy 2', false, 200);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', 'Description of Galaxy 3', true, 150);
INSERT INTO public.galaxy VALUES (4, 'Via Lactea', 'Nuestra galaxia', true, 13500);
INSERT INTO public.galaxy VALUES (5, 'Andromeda', 'Nuestra galaxia vecina mas cercana', false, 10000);
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 'Una pequeña galaxia espiral', false, 5000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (37, 'Luna', 'La lluna que orbita alrededor de  la Tierra', false, 5, 22, true);
INSERT INTO public.moon VALUES (38, 'Fobos', 'La luna mas grande de Marte', false, 4, 23, true);
INSERT INTO public.moon VALUES (39, 'Deimos', 'La luna mas pequeña de Marte', false, 4, 23, true);
INSERT INTO public.moon VALUES (40, 'Europa', 'Una de las lunas de Jupiter', false, 5, 24, true);
INSERT INTO public.moon VALUES (41, 'Titan', 'La luna mas grande de Saturno', false, 5, 26, true);
INSERT INTO public.moon VALUES (42, 'Ganimedes', 'La luna mas grande de Jupiter', false, 5, 24, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (19, 'Planet 1', 'Description of Planet 1', true, 100, 1, NULL);
INSERT INTO public.planet VALUES (20, 'Planet 2', 'Description of Planet 2', false, 200, 1, NULL);
INSERT INTO public.planet VALUES (21, 'Planet 3', 'Description of Planet 3', true, 150, 1, NULL);
INSERT INTO public.planet VALUES (22, 'Tierra', 'Nuestro planeta', true, 4500, NULL, 1);
INSERT INTO public.planet VALUES (23, 'Marte', 'El planeta rojo', false, 4500, NULL, 1);
INSERT INTO public.planet VALUES (24, 'Jupiter', 'El planeta mas grande', false, 4600, NULL, 1);
INSERT INTO public.planet VALUES (25, 'Venus', 'El segundo planeta desde el sol', false, 4500, NULL, 1);
INSERT INTO public.planet VALUES (26, 'Saturno', 'El planeta con anillos', false, 4600, NULL, 1);
INSERT INTO public.planet VALUES (27, 'Neptuno', 'Un gigante de gas azul', false, 4500, NULL, 1);
INSERT INTO public.planet VALUES (28, 'Mercurio', 'El planeta mas pequeño del Sistema Solar', false, 4500, NULL, 1);
INSERT INTO public.planet VALUES (29, 'Urano', 'Un gigante de hielo', false, 4600, NULL, 1);
INSERT INTO public.planet VALUES (30, 'Exoplaneta1', 'Un exoplaneta distante', false, 2000, NULL, 2);
INSERT INTO public.planet VALUES (31, 'Exoplaneta2', 'Otro exoplaneta distante', false, 2100, NULL, 3);
INSERT INTO public.planet VALUES (32, 'Exoplaneta3', 'Aun otro exoplaneta distante', false, 2200, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 2', 'Description of Star 2', true, 80, 1);
INSERT INTO public.star VALUES (2, 'Star 3', 'Description of Star 3', false, 60, 2);
INSERT INTO public.star VALUES (3, 'Sol', 'Nuestro sol', true, 4600, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'La estrella cococida mas cercana', false, 4200, 1);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 'Una estrella supergigante roja', false, 10000, 2);
INSERT INTO public.star VALUES (6, 'Sirio', 'La estrella mas brillante en el cielo nocturno', false, 12000, 3);
INSERT INTO public.star VALUES (7, 'Vega', 'Una de las estrellas mas luminosas', false, 13000, 3);
INSERT INTO public.star VALUES (36, 'Sol', 'Nuestro sol', true, 4600, 1);
INSERT INTO public.star VALUES (37, 'Proxima Centauri', 'La estrella conocida mas cercana', false, 4200, 1);
INSERT INTO public.star VALUES (38, 'Betelguese', 'Una estrella suoer gigante roja', false, 10000, 2);
INSERT INTO public.star VALUES (39, 'Sirio', 'La estrella mas brillante en el cielo nocturno', false, 12000, 3);
INSERT INTO public.star VALUES (40, 'Vega', 'Una de las estrellas mas luminosas', false, 13000, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 42, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 32, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 40, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (star_star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(star_star_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (planet_star_id) REFERENCES public.star(star_star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (star_galaxy_id) REFERENCES public.galaxy(galaxy_galaxy_id);


--
-- PostgreSQL database dump complete
--

