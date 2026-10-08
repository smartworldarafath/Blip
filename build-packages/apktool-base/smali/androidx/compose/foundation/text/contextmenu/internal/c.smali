.class public final synthetic Landroidx/compose/foundation/text/contextmenu/internal/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    iput p3, p0, Landroidx/compose/foundation/text/contextmenu/internal/c;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/foundation/text/contextmenu/internal/c;->k:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/foundation/text/contextmenu/internal/c;->l:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;)V
    .locals 1

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/text/contextmenu/internal/c;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/contextmenu/internal/c;->k:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/text/contextmenu/internal/c;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/contextmenu/internal/c;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/text/contextmenu/internal/c;->l:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/internal/c;->k:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;

    .line 13
    .line 14
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 17
    .line 18
    check-cast p2, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/16 p2, 0x31

    .line 24
    .line 25
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p0, v2, p1, p2}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->a(Landroid/graphics/drawable/Drawable;Landroidx/compose/runtime/Composer;I)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :pswitch_0
    move-object v5, p0

    .line 34
    check-cast v5, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 35
    .line 36
    check-cast v2, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 37
    .line 38
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 39
    .line 40
    check-cast p2, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    sget-object p2, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->a:Landroidx/compose/ui/window/PopupProperties;

    .line 47
    .line 48
    and-int/lit8 p2, p0, 0x3

    .line 49
    .line 50
    const/4 v0, 0x2

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v3, 0x1

    .line 53
    if-eq p2, v0, :cond_0

    .line 54
    .line 55
    move p2, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move p2, v10

    .line 58
    :goto_0
    and-int/2addr p0, v3

    .line 59
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 60
    .line 61
    invoke-virtual {p1, p0, p2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    if-nez p0, :cond_1

    .line 76
    .line 77
    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 78
    .line 79
    if-ne p2, p0, :cond_2

    .line 80
    .line 81
    :cond_1
    new-instance v3, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$OpenContextMenu$2$data$2$1;

    .line 82
    .line 83
    const-string v8, "data()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;"

    .line 84
    .line 85
    const/4 v9, 0x0

    .line 86
    const/4 v4, 0x0

    .line 87
    const-class v6, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 88
    .line 89
    const-string v7, "data"

    .line 90
    .line 91
    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    check-cast p2, Landroidx/compose/runtime/State;

    .line 102
    .line 103
    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 108
    .line 109
    invoke-static {v2, p0, p1, v10}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->a(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;Landroidx/compose/runtime/Composer;I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 114
    .line 115
    .line 116
    :goto_1
    return-object v1

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
