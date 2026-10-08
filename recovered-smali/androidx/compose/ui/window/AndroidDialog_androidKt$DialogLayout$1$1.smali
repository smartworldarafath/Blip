.class final Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# static fields
.field public static final a:Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$1;->a:Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    move v3, v2

    .line 17
    move v4, v3

    .line 18
    :goto_0
    if-ge v2, v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 25
    .line 26
    invoke-interface {v5, p3, p4}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iget v6, v5, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 31
    .line 32
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    iget v6, v5, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 37
    .line 38
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    :cond_1
    new-instance p2, Lc1;

    .line 63
    .line 64
    invoke-direct {p2, v1, p0}, Lc1;-><init>(ILjava/util/ArrayList;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v3, v4, p2}, Landroidx/compose/ui/layout/MeasureScope;->h0(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method
