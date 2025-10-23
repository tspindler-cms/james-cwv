GT.RunWays =
{
-- landing strip definition (first in table)
--	VppStartPoint; 					azimuth (degree} 	Length_Vpp; 	Width_Vpp;
	{{-113.36,	6.2535, -4.6145}, 		297.75, 			87.0, 			20.0,
-- alsArgument, lowGlidePath, slightlyLowGlidePath, onLowerGlidePath, onUpperGlidePath, slightlyHighGlidePath, highGlidePath
	1, 			2.5, 		  		2.8, 					3.0, 			  3.0, 				3.2, 				3.5},
    -- runways
    {{-113.36,	6.2535, -4.6145}, 	297.75, 			90, 			20.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},
};
GT.RunWays.RunwaysNumber = #GT.RunWays

GT.TaxiRoutes =
{
    -- taxi routes and parking spots
    --    {x, y, z},  direction
}
GT.TaxiRoutes.RoutesNumber = #GT.TaxiRoutes

GT.HelicopterSpawnTerminal =
{
    -- taxi routes and parking spots in LCS
	--    x				y        z			direction
    {
        TerminalIdx = 1, Points =
        { -- 1 spawn spot
			{ {-113.36,	6.2535, -4.6145}, 297.75 }
        }
    },
}
GT.HelicopterSpawnTerminal.TerminalNumber = #GT.HelicopterSpawnTerminal