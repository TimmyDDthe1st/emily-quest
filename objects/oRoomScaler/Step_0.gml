if (browser_width != width || browser_height != height)
    {
    width = min(base_width, browser_width);
    height = min(base_height, browser_height);
    ScaleCanvas(base_width, base_height, width, height, true);
    }