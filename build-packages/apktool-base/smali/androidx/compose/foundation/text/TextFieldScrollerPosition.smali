.class public final Landroidx/compose/foundation/text/TextFieldScrollerPosition;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final g:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;


# instance fields
.field public final a:Landroidx/compose/runtime/MutableFloatState;

.field public final b:Landroidx/compose/runtime/MutableFloatState;

.field public final c:Landroidx/compose/runtime/MutableIntState;

.field public d:Landroidx/compose/ui/geometry/Rect;

.field public e:J

.field public final f:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcf;

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcf;-><init>(IB)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lqg;

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    invoke-direct {v1, v2}, Lqg;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->a(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->g:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/Orientation;F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->a:Landroidx/compose/runtime/MutableFloatState;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->b:Landroidx/compose/runtime/MutableFloatState;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-static {p2}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->c:Landroidx/compose/runtime/MutableIntState;

    .line 23
    .line 24
    sget-object p2, Landroidx/compose/ui/geometry/Rect;->e:Landroidx/compose/ui/geometry/Rect;

    .line 25
    .line 26
    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->d:Landroidx/compose/ui/geometry/Rect;

    .line 27
    .line 28
    sget-wide v0, Landroidx/compose/ui/text/TextRange;->b:J

    .line 29
    .line 30
    iput-wide v0, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->e:J

    .line 31
    .line 32
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->m()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->f(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->f:Landroidx/compose/runtime/MutableState;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->a:Landroidx/compose/runtime/MutableFloatState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->j()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final b(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/geometry/Rect;II)V
    .locals 8

    .line 1
    sub-int/2addr p4, p3

    .line 2
    int-to-float p4, p4

    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->b:Landroidx/compose/runtime/MutableFloatState;

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 6
    .line 7
    invoke-virtual {v0, p4}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 8
    .line 9
    .line 10
    iget v0, p2, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 11
    .line 12
    iget v1, p2, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->d:Landroidx/compose/ui/geometry/Rect;

    .line 15
    .line 16
    iget v3, v2, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 17
    .line 18
    cmpg-float v3, v0, v3

    .line 19
    .line 20
    iget-object v4, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->a:Landroidx/compose/runtime/MutableFloatState;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    iget v2, v2, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 26
    .line 27
    cmpg-float v2, v1, v2

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    goto :goto_4

    .line 32
    :cond_0
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 33
    .line 34
    if-ne p1, v2, :cond_1

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    :goto_0
    if-eqz p1, :cond_2

    .line 40
    .line 41
    move v0, v1

    .line 42
    :cond_2
    if-eqz p1, :cond_3

    .line 43
    .line 44
    iget p1, p2, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    iget p1, p2, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 48
    .line 49
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->a()F

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    int-to-float v2, p3

    .line 54
    add-float v3, v1, v2

    .line 55
    .line 56
    cmpl-float v6, p1, v3

    .line 57
    .line 58
    if-lez v6, :cond_4

    .line 59
    .line 60
    :goto_2
    sub-float/2addr p1, v3

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    cmpg-float v6, v0, v1

    .line 63
    .line 64
    if-gez v6, :cond_5

    .line 65
    .line 66
    sub-float v7, p1, v0

    .line 67
    .line 68
    cmpl-float v7, v7, v2

    .line 69
    .line 70
    if-lez v7, :cond_5

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    if-gez v6, :cond_6

    .line 74
    .line 75
    sub-float/2addr p1, v0

    .line 76
    cmpg-float p1, p1, v2

    .line 77
    .line 78
    if-gtz p1, :cond_6

    .line 79
    .line 80
    sub-float p1, v0, v1

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_6
    move p1, v5

    .line 84
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->a()F

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    add-float/2addr v0, p1

    .line 89
    move-object p1, v4

    .line 90
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 93
    .line 94
    .line 95
    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->d:Landroidx/compose/ui/geometry/Rect;

    .line 96
    .line 97
    :goto_4
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->a()F

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-static {p1, v5, p4}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 106
    .line 107
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->c:Landroidx/compose/runtime/MutableIntState;

    .line 111
    .line 112
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 113
    .line 114
    invoke-virtual {p0, p3}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 115
    .line 116
    .line 117
    return-void
.end method
