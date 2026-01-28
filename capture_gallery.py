from playwright.sync_api import sync_playwright
import time

def run():
    with sync_playwright() as p:
        browser = p.chromium.launch()
        # iPhone 13 Pro viewport
        page = browser.new_page(viewport={"width": 390, "height": 844})

        print("Navigating to app...")
        page.goto("http://localhost:3000")

        # 1. Get Started Screen
        print("Processing Get Started screen...")
        time.sleep(10) # Wait for initial load
        page.screenshot(path="assets/preview_get_started.png")
        print("Saved assets/preview_get_started.png")

        # 2. Navigate to Sign In
        print("Navigating to Sign In...")
        # Locating the button. In Flutter web 'ElevatedButton' usually renders as a button role or we can click by text.
        # Since text selectors failed before, let's try a tap on the coordinates where the button usually is,
        # OR try to find the button by role if accessible.
        # Best bet given previous failure: blind click or improved wait.
        # Let's try blind click on the button location relative to viewport if selectors fail.
        # The button is at the bottom.

        # Try to find the button by text again, but catching errors
        found_button = False
        try:
            # Check if we can find the button text
            btn = page.locator("text=Getting Started")
            if btn.count() > 0:
                btn.click()
                found_button = True
            else:
                # Try finding by role button
                 # In some flutter web renderers, semantics are not full html elements.
                 # But let's assume we can click.
                 pass
        except:
            pass

        if not found_button:
            print("Fallback: Clicking via coordinates for Get Started button...")
            # Button is centered at bottom. x=195, y=approx 600-700?
            # From source: top padding 160 + image + 60 + text + 20 + text + 50 + button height 50.
            # Let's estimate y=700.
            page.mouse.click(195, 700)

        time.sleep(5) # Wait for navigation animation
        page.screenshot(path="assets/preview_signin.png")
        print("Saved assets/preview_signin.png")

        # 3. Navigate to Discover (Sign In)
        print("Navigating to Discover...")
        # On SignIn page, there is another "Getting Started" button at the bottom form.
        # It's inside a Column.
        # Let's try clicking the same button text or coordinates again.
        # Button is at the bottom of the form container.

        # Scroll to bottom just in case
        page.mouse.wheel(0, 500)
        time.sleep(1)

        try:
             # Try to click the button by text
             # The button text is "Getting Started"
             btn = page.locator("text=Getting Started").last
             if btn.count() > 0:
                 btn.click()
             else:
                 # Fallback click
                 # If we are scrolled, coordinates might need adjustment or ensure we are clicking on viewport
                 # Scroll view pushes content up. Button is at end of column.
                 # Let's try clicking safely at bottom center of viewport if scrolled.
                 page.mouse.click(195, 750)
        except:
             page.mouse.click(195, 750)

        time.sleep(5)
        page.screenshot(path="assets/preview_discover.png")
        print("Saved assets/preview_discover.png")

        browser.close()

if __name__ == "__main__":
    run()
