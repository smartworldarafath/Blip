.class public final synthetic Lp6;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Lkotlin/jvm/functions/Function2;

.field public final synthetic k:Landroidx/compose/foundation/contextmenu/ContextMenuScope;

.field public final synthetic l:Lkotlin/jvm/functions/Function3;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/contextmenu/ContextMenuScope;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp6;->j:Lkotlin/jvm/functions/Function2;

    .line 5
    .line 6
    iput-object p2, p0, Lp6;->k:Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    .line 7
    .line 8
    iput-object p3, p0, Lp6;->l:Lkotlin/jvm/functions/Function3;

    .line 9
    .line 10
    iput-object p4, p0, Lp6;->m:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v3, p1

    .line 2
    check-cast v3, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    and-int/lit8 p3, p1, 0x6

    .line 13
    .line 14
    if-nez p3, :cond_1

    .line 15
    .line 16
    move-object p3, p2

    .line 17
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    const/4 p3, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p3, 0x2

    .line 28
    :goto_0
    or-int/2addr p1, p3

    .line 29
    :cond_1
    and-int/lit8 p3, p1, 0x13

    .line 30
    .line 31
    const/16 v0, 0x12

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eq p3, v0, :cond_2

    .line 35
    .line 36
    const/4 p3, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move p3, v1

    .line 39
    :goto_1
    and-int/lit8 v0, p1, 0x1

    .line 40
    .line 41
    move-object v6, p2

    .line 42
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 43
    .line 44
    invoke-virtual {v6, v0, p3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_4

    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iget-object p3, p0, Lp6;->j:Lkotlin/jvm/functions/Function2;

    .line 55
    .line 56
    invoke-interface {p3, v6, p2}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    move-object v1, p2

    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v1}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_3

    .line 68
    .line 69
    const-string p2, "Label must not be blank"

    .line 70
    .line 71
    invoke-static {p2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object p2, p0, Lp6;->k:Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 80
    .line 81
    shl-int/lit8 p1, p1, 0x9

    .line 82
    .line 83
    and-int/lit16 p1, p1, 0x1c00

    .line 84
    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    sget-object v0, Landroidx/compose/foundation/contextmenu/ComposableSingletons$ContextMenuUiKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 90
    .line 91
    iget-object v4, p0, Lp6;->l:Lkotlin/jvm/functions/Function3;

    .line 92
    .line 93
    iget-object v5, p0, Lp6;->m:Lkotlin/jvm/functions/Function0;

    .line 94
    .line 95
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->i(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;Ljava/lang/Integer;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 100
    .line 101
    .line 102
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    return-object p0
.end method
