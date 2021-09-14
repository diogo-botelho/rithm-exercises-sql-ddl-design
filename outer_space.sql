--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

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
-- Name: moons; Type: TABLE; Schema: public; Owner: diogobotelho
--

CREATE TABLE public.moons (
    moon_name text NOT NULL,
    planet text NOT NULL
);


ALTER TABLE public.moons OWNER TO diogobotelho;

--
-- Name: planets; Type: TABLE; Schema: public; Owner: diogobotelho
--

CREATE TABLE public.planets (
    planet_name text NOT NULL,
    orbital_period_in_days integer NOT NULL,
    star text NOT NULL
);


ALTER TABLE public.planets OWNER TO diogobotelho;

--
-- Name: stars; Type: TABLE; Schema: public; Owner: diogobotelho
--

CREATE TABLE public.stars (
    star_name text NOT NULL,
    star_temp_in_kelvin integer NOT NULL
);


ALTER TABLE public.stars OWNER TO diogobotelho;

--
-- Data for Name: moons; Type: TABLE DATA; Schema: public; Owner: diogobotelho
--

COPY public.moons (moon_name, planet) FROM stdin;
The Moon	Earth
Phobos	Mars
Deimos	Mars
Moon without planet	Earth
\.


--
-- Data for Name: planets; Type: TABLE DATA; Schema: public; Owner: diogobotelho
--

COPY public.planets (planet_name, orbital_period_in_days, star) FROM stdin;
Earth	365	The Sun
Mars	687	The Sun
Venus	226	The Sun
Proxima Centauri b	11	Proxima Centauri
Gliese 876 b	86	Gliese 876
\.


--
-- Data for Name: stars; Type: TABLE DATA; Schema: public; Owner: diogobotelho
--

COPY public.stars (star_name, star_temp_in_kelvin) FROM stdin;
The Sun	5800
Proxima Centauri	3042
Gliese 876	3192
\.


--
-- Name: moons moons_pkey; Type: CONSTRAINT; Schema: public; Owner: diogobotelho
--

ALTER TABLE ONLY public.moons
    ADD CONSTRAINT moons_pkey PRIMARY KEY (moon_name);


--
-- Name: planets planets_pkey; Type: CONSTRAINT; Schema: public; Owner: diogobotelho
--

ALTER TABLE ONLY public.planets
    ADD CONSTRAINT planets_pkey PRIMARY KEY (planet_name);


--
-- Name: stars stars_pkey; Type: CONSTRAINT; Schema: public; Owner: diogobotelho
--

ALTER TABLE ONLY public.stars
    ADD CONSTRAINT stars_pkey PRIMARY KEY (star_name);


--
-- Name: moons moons_planets_fkey; Type: FK CONSTRAINT; Schema: public; Owner: diogobotelho
--

ALTER TABLE ONLY public.moons
    ADD CONSTRAINT moons_planets_fkey FOREIGN KEY (planet) REFERENCES public.planets(planet_name);


--
-- Name: planets planets_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: diogobotelho
--

ALTER TABLE ONLY public.planets
    ADD CONSTRAINT planets_star_fkey FOREIGN KEY (star) REFERENCES public.stars(star_name);


--
-- PostgreSQL database dump complete
--

