.class public final synthetic Lw1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lw1;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lw1;->l:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p2, p0, Lw1;->k:Z

    .line 6
    .line 7
    iput-object p3, p0, Lw1;->m:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lw1;->n:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lw1;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lw1;->n:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lw1;->m:Ljava/lang/Object;

    .line 8
    .line 9
    iget-boolean v4, p0, Lw1;->k:Z

    .line 10
    .line 11
    iget-object p0, p0, Lw1;->l:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p0, Landroidx/work/ListenableWorker;

    .line 17
    .line 18
    check-cast v3, Ljava/lang/String;

    .line 19
    .line 20
    check-cast v2, Landroidx/work/impl/WorkerWrapper;

    .line 21
    .line 22
    check-cast p1, Ljava/lang/Throwable;

    .line 23
    .line 24
    instance-of v0, p1, Landroidx/work/impl/WorkerStoppedException;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    check-cast p1, Landroidx/work/impl/WorkerStoppedException;

    .line 29
    .line 30
    iget p1, p1, Landroidx/work/impl/WorkerStoppedException;->j:I

    .line 31
    .line 32
    iget-object p0, p0, Landroidx/work/ListenableWorker;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    const/16 v0, -0x100

    .line 35
    .line 36
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    if-eqz v4, :cond_1

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iget-object p0, v2, Landroidx/work/impl/WorkerWrapper;->e:Landroidx/work/Configuration;

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/work/Configuration;->m:Landroidx/work/ConfigurationKt$createDefaultTracer$tracer$1;

    .line 46
    .line 47
    iget-object p1, v2, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v3}, Landroidx/tracing/Trace;->b(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-object v1

    .line 60
    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 61
    .line 62
    check-cast v3, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 63
    .line 64
    check-cast v2, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 65
    .line 66
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 67
    .line 68
    check-cast p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 74
    .line 75
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    if-eqz v4, :cond_3

    .line 89
    .line 90
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->B0()J

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    iget-object p0, p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 97
    .line 98
    .line 99
    move-result-wide v6

    .line 100
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->g()V

    .line 105
    .line 106
    .line 107
    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 108
    .line 109
    const/high16 v8, -0x40800000    # -1.0f

    .line 110
    .line 111
    const/high16 v9, 0x3f800000    # 1.0f

    .line 112
    .line 113
    invoke-virtual {v0, v8, v9, v4, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->b(FFJ)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v3, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->d(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/BlendModeColorFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    .line 119
    invoke-static {p0, v6, v7}, Lq;->v(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    invoke-static {p0, v6, v7}, Lq;->v(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_3
    invoke-virtual {p1, v3, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->d(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/BlendModeColorFilter;)V

    .line 129
    .line 130
    .line 131
    :goto_0
    return-object v1

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
