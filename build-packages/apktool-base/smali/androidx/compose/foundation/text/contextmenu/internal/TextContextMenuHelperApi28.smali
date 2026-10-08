.class final Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->a:Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Landroidx/compose/runtime/Composer;I)V
    .locals 5

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0xf5caf94

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x2

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    :goto_0
    or-int/2addr v0, p3

    .line 20
    and-int/lit8 v2, v0, 0x3

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v2, v1, :cond_1

    .line 25
    .line 26
    move v1, v4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v1, v3

    .line 29
    :goto_1
    and-int/2addr v0, v4

    .line 30
    invoke-virtual {p2, v0, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 37
    .line 38
    sget v1, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->e:F

    .line 39
    .line 40
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 55
    .line 56
    if-ne v2, v1, :cond_3

    .line 57
    .line 58
    :cond_2
    new-instance v2, Lma;

    .line 59
    .line 60
    const/16 v1, 0x1a

    .line 61
    .line 62
    invoke-direct {v2, v1, p1}, Lma;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 69
    .line 70
    invoke-static {v0, v2}, Landroidx/compose/ui/draw/DrawModifierKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0, p2, v3}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 79
    .line 80
    .line 81
    :goto_2
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    if-eqz p2, :cond_5

    .line 86
    .line 87
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/internal/c;

    .line 88
    .line 89
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/text/contextmenu/internal/c;-><init>(Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;Landroid/graphics/drawable/Drawable;I)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 93
    .line 94
    :cond_5
    return-void
.end method
