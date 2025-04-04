class shape:
    def draw(self):
        return "Draw any diagram shape"
class Rectangle(shape):
    def draw(self):
        return "draw the rectangle shape"
class Triangle(shape):
    def draw(self):
        return "Draw the triangle shape"
shapes = [Rectangle(),Triangle()]
for i in shapes:
    print(i.draw())
        