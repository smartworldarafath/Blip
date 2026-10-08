.class public final synthetic Ljf;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Ljava/util/LinkedHashMap;

.field public final synthetic k:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic l:Lkotlin/jvm/functions/Function2;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Landroid/content/Context;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:Landroidx/compose/runtime/MutableState;

.field public final synthetic q:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedHashMap;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljf;->j:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    iput-object p2, p0, Ljf;->k:Lkotlinx/coroutines/CoroutineScope;

    .line 7
    .line 8
    iput-object p3, p0, Ljf;->l:Lkotlin/jvm/functions/Function2;

    .line 9
    .line 10
    iput-object p4, p0, Ljf;->m:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Ljf;->n:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p6, p0, Ljf;->o:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    iput-object p7, p0, Ljf;->p:Landroidx/compose/runtime/MutableState;

    .line 17
    .line 18
    iput-object p8, p0, Ljf;->q:Landroidx/compose/runtime/MutableIntState;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    and-int/lit8 p1, p3, 0x11

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    move p1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p1, v1

    .line 25
    :goto_0
    and-int/2addr p3, v2

    .line 26
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    invoke-virtual {p2, p3, p1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    iget-object v3, p0, Ljf;->k:Lkotlinx/coroutines/CoroutineScope;

    .line 35
    .line 36
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object v6, p0, Ljf;->l:Lkotlin/jvm/functions/Function2;

    .line 41
    .line 42
    invoke-virtual {p2, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    or-int/2addr p1, p3

    .line 47
    iget-object v7, p0, Ljf;->m:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p2, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    or-int/2addr p1, p3

    .line 54
    iget-object v8, p0, Ljf;->n:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {p2, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    or-int/2addr p1, p3

    .line 61
    iget-object v4, p0, Ljf;->o:Lkotlin/jvm/functions/Function1;

    .line 62
    .line 63
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    or-int/2addr p1, p3

    .line 68
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    if-nez p1, :cond_1

    .line 73
    .line 74
    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 75
    .line 76
    if-ne p3, p1, :cond_2

    .line 77
    .line 78
    :cond_1
    new-instance v2, Lnet/blip/android/ui/settings/a;

    .line 79
    .line 80
    iget-object v5, p0, Ljf;->p:Landroidx/compose/runtime/MutableState;

    .line 81
    .line 82
    iget-object v9, p0, Ljf;->q:Landroidx/compose/runtime/MutableIntState;

    .line 83
    .line 84
    invoke-direct/range {v2 .. v9}, Lnet/blip/android/ui/settings/a;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroid/content/Context;Landroidx/compose/runtime/MutableIntState;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    move-object p3, v2

    .line 91
    :cond_2
    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 92
    .line 93
    const/4 p1, 0x0

    .line 94
    iget-object p0, p0, Ljf;->j:Ljava/util/LinkedHashMap;

    .line 95
    .line 96
    invoke-static {p1, p0, p3, p2, v1}, Lnet/blip/android/ui/components/DropdownMenuKt;->b(Landroidx/compose/ui/Modifier;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 101
    .line 102
    .line 103
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 104
    .line 105
    return-object p0
.end method
