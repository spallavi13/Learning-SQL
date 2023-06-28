Select *
From PortfolioProject..CovidDeaths$
order by 3, 4

--Select *
--From PortfolioProject..CovidVaccinations$
--order by 3, 4

-- Select Data that we are going to be starting with

Select Location, date, total_cases, new_cases, total_deaths, population
From PortfolioProject..CovidDeaths$
-- Where continent is not null 
order by 1,2

-- Total Cases vs Total Deaths
-- Shows likelihood of dying if you contract covid in Uniyed state country
Select Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
From PortfolioProject..CovidDeaths$
where location like '%states%'
-- Where continent is not null 
order by 1,2

-- Total Cases vs Population
-- Shows what percentage of population infected with Covid
Select Location, date, Population, total_cases,  (total_cases/population)*100 as PercentPopulationInfected
From PortfolioProject..CovidDeaths$
where location like '%states%'
-- Where continent is not null 
order by 1,2

-- Countries with Highest Infection Rate compared to Population

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From PortfolioProject..CovidDeaths$
--Where location like '%states%'
Group by Location, Population
order by PercentPopulationInfected desc

-- Countries with Highest Death Count per Population
-- casting done to order the data in a particular order
Select Location, Population, MAX(cast(total_deaths as int)) as HighestDeathCount, Max((total_deaths/population))*100 as DeathPercentage
From PortfolioProject..CovidDeaths$
where continent is not null -- to include only countries and skip the continents
Group by Location, Population
order by HighestDeathCount desc
