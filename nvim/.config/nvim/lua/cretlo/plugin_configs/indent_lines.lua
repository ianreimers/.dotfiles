local status, ibl = pcall(require, "ibl")
if not status then
    print("Couldn't import indent blank line lib")
end

ibl.setup()

