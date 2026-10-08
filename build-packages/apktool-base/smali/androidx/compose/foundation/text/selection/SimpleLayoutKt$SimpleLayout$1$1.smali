.class final Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# static fields
.field public static final a:Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$1;->a:Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 6

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
    :goto_0
    if-ge v1, v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 24
    .line 25
    invoke-interface {v4, p3, p4}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget v5, v4, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 30
    .line 31
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget v5, v4, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 36
    .line 37
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance p2, Lc1;

    .line 48
    .line 49
    const/4 p3, 0x4

    .line 50
    invoke-direct {p2, p3, p0}, Lc1;-><init>(ILjava/util/ArrayList;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v2, v3, p2}, Landroidx/compose/ui/layout/MeasureScope;->h0(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method
