.class final Landroidx/compose/foundation/VerticalScrollableClipShape;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# static fields
.field public static final a:Landroidx/compose/foundation/VerticalScrollableClipShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/VerticalScrollableClipShape;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/VerticalScrollableClipShape;->a:Landroidx/compose/foundation/VerticalScrollableClipShape;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;
    .locals 4

    .line 1
    const/high16 p0, 0x41f00000    # 30.0f

    .line 2
    .line 3
    invoke-interface {p4, p0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    int-to-float p0, p0

    .line 8
    new-instance p3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 9
    .line 10
    new-instance p4, Landroidx/compose/ui/geometry/Rect;

    .line 11
    .line 12
    neg-float v0, p0

    .line 13
    const/16 v1, 0x20

    .line 14
    .line 15
    shr-long v1, p1, v1

    .line 16
    .line 17
    long-to-int v1, v1

    .line 18
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-float/2addr v1, p0

    .line 23
    const-wide v2, 0xffffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    and-long p0, p1, v2

    .line 29
    .line 30
    long-to-int p0, p0

    .line 31
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-direct {p4, v0, p1, v1, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p3, p4}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    .line 40
    .line 41
    .line 42
    return-object p3
.end method
