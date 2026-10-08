.class final Landroidx/compose/ui/semantics/RtlBoundsComparator;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/compose/ui/semantics/SemanticsNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Landroidx/compose/ui/semantics/RtlBoundsComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/semantics/RtlBoundsComparator;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/semantics/RtlBoundsComparator;->j:Landroidx/compose/ui/semantics/RtlBoundsComparator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/geometry/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/geometry/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget p2, p1, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 14
    .line 15
    iget v0, p0, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 16
    .line 17
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    return p2

    .line 24
    :cond_0
    iget p2, p0, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 25
    .line 26
    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 27
    .line 28
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    return p2

    .line 35
    :cond_1
    iget p2, p0, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 36
    .line 37
    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 38
    .line 39
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    return p2

    .line 46
    :cond_2
    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 47
    .line 48
    iget p0, p0, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 49
    .line 50
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0
.end method
