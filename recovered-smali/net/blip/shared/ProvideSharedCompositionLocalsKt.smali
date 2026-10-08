.class public abstract Lnet/blip/shared/ProvideSharedCompositionLocalsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final b:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final c:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lvc;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lvc;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 13
    .line 14
    new-instance v0, Lvc;

    .line 15
    .line 16
    const/4 v1, 0x6

    .line 17
    invoke-direct {v0, v1}, Lvc;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->b:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 26
    .line 27
    new-instance v0, Lvc;

    .line 28
    .line 29
    const/4 v1, 0x7

    .line 30
    invoke-direct {v0, v1}, Lvc;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 36
    .line 37
    .line 38
    sput-object v1, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->c:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 39
    .line 40
    new-instance v0, Lvc;

    .line 41
    .line 42
    const/16 v1, 0x8

    .line 43
    .line 44
    invoke-direct {v0, v1}, Lvc;-><init>(I)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 48
    .line 49
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 50
    .line 51
    .line 52
    sput-object v1, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 53
    .line 54
    return-void
.end method

.method public static final a(Lnet/blip/libblip/Flavor;Lnet/blip/libblip/SystemPaths;Lnet/blip/libblip/HardwareInfo;Lnet/blip/libblip/Core;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p5, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v0, 0x52cbc162

    .line 13
    .line 14
    .line 15
    invoke-virtual {p5, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p5, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    :goto_0
    or-int/2addr v0, p6

    .line 28
    invoke-virtual {p5, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/16 v1, 0x20

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v1, 0x10

    .line 38
    .line 39
    :goto_1
    or-int/2addr v0, v1

    .line 40
    invoke-virtual {p5, p2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const/16 v1, 0x100

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v1, 0x80

    .line 50
    .line 51
    :goto_2
    or-int/2addr v0, v1

    .line 52
    invoke-virtual {p5, p3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    const/16 v1, 0x800

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    const/16 v1, 0x400

    .line 62
    .line 63
    :goto_3
    or-int/2addr v0, v1

    .line 64
    and-int/lit16 v1, v0, 0x2493

    .line 65
    .line 66
    const/16 v2, 0x2492

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    if-eq v1, v2, :cond_4

    .line 70
    .line 71
    move v1, v3

    .line 72
    goto :goto_4

    .line 73
    :cond_4
    const/4 v1, 0x0

    .line 74
    :goto_4
    and-int/2addr v0, v3

    .line 75
    invoke-virtual {p5, v0, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    sget-object v0, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sget-object v1, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->b:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 88
    .line 89
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    sget-object v2, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->c:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 94
    .line 95
    invoke-virtual {v2, p2}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    sget-object v3, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 100
    .line 101
    invoke-virtual {v3, p3}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    filled-new-array {v0, v1, v2, v3}, [Landroidx/compose/runtime/ProvidedValue;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const/16 v1, 0x30

    .line 110
    .line 111
    invoke-static {v0, p4, p5, v1}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 112
    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_5
    invoke-virtual {p5}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 116
    .line 117
    .line 118
    :goto_5
    invoke-virtual {p5}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 119
    .line 120
    .line 121
    move-result-object p5

    .line 122
    if-eqz p5, :cond_6

    .line 123
    .line 124
    new-instance v0, Lr7;

    .line 125
    .line 126
    const/4 v7, 0x5

    .line 127
    move-object v1, p0

    .line 128
    move-object v2, p1

    .line 129
    move-object v3, p2

    .line 130
    move-object v4, p3

    .line 131
    move-object v5, p4

    .line 132
    move v6, p6

    .line 133
    invoke-direct/range {v0 .. v7}, Lr7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 134
    .line 135
    .line 136
    iput-object v0, p5, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 137
    .line 138
    :cond_6
    return-void
.end method

.method public static final b(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/frontend/State;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lnet/blip/libblip/Core;

    .line 11
    .line 12
    iget-object p0, p0, Lnet/blip/libblip/Core;->a:Lkotlinx/coroutines/flow/StateFlow;

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lnet/blip/libblip/frontend/State;

    .line 23
    .line 24
    return-object p0
.end method
