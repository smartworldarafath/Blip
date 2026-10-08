.class public final Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;
.super Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection<",
        "Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final i:Landroidx/compose/foundation/text/TextLayoutResultProxy;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/TextLayoutResultProxy;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;)V
    .locals 7

    .line 1
    iget-object v1, p1, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 2
    .line 3
    iget-wide v2, p1, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    iget-object v0, p3, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 8
    .line 9
    :goto_0
    move-object v5, p2

    .line 10
    move-object v6, p4

    .line 11
    move-object v4, v0

    .line 12
    move-object v0, p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :goto_1
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->h:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 20
    .line 21
    iput-object p3, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->i:Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final q(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroidx/compose/ui/text/input/EditCommand;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :cond_1
    new-instance p1, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 25
    .line 26
    const-string v0, ""

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 33
    .line 34
    iget-wide v2, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 35
    .line 36
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->f(J)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iget-wide v3, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 41
    .line 42
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->f(J)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-direct {v0, v2, p0}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x2

    .line 50
    new-array p0, p0, [Landroidx/compose/ui/text/input/EditCommand;

    .line 51
    .line 52
    aput-object p1, p0, v1

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    aput-object v0, p0, p1

    .line 56
    .line 57
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public final r(Landroidx/compose/foundation/text/TextLayoutResultProxy;I)I
    .locals 8

    .line 1
    iget-object v0, p1, Landroidx/compose/foundation/text/TextLayoutResultProxy;->b:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/compose/foundation/text/TextLayoutResultProxy;->c:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-interface {p1, v0, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->l(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    if-nez p1, :cond_2

    .line 19
    .line 20
    :cond_1
    sget-object p1, Landroidx/compose/ui/geometry/Rect;->e:Landroidx/compose/ui/geometry/Rect;

    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->h:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 23
    .line 24
    iget-wide v2, v0, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 25
    .line 26
    sget v0, Landroidx/compose/ui/text/TextRange;->c:I

    .line 27
    .line 28
    const-wide v4, 0xffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr v2, v4

    .line 34
    long-to-int v0, v2

    .line 35
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->d:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 36
    .line 37
    invoke-interface {p0, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->c(I)Landroidx/compose/ui/geometry/Rect;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v2, v0, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 46
    .line 47
    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->c()J

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    and-long/2addr v6, v4

    .line 54
    long-to-int p1, v6

    .line 55
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    int-to-float p2, p2

    .line 60
    mul-float/2addr p1, p2

    .line 61
    add-float/2addr p1, v0

    .line 62
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    int-to-long v2, p2

    .line 67
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    int-to-long p1, p1

    .line 72
    const/16 v0, 0x20

    .line 73
    .line 74
    shl-long/2addr v2, v0

    .line 75
    and-long/2addr p1, v4

    .line 76
    or-long/2addr p1, v2

    .line 77
    iget-object v0, v1, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 78
    .line 79
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/text/MultiParagraph;->g(J)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-interface {p0, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->a(I)I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    return p0
.end method
