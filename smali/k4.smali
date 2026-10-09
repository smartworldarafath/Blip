.class public final synthetic Lk4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic k:Landroidx/compose/ui/unit/LayoutDirection;

.field public final synthetic l:Ljava/util/List;

.field public final synthetic m:Landroidx/compose/ui/text/AnnotatedString;

.field public final synthetic n:Landroidx/compose/ui/unit/Density;

.field public final synthetic o:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final synthetic p:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;Ljava/util/List;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk4;->j:Landroidx/compose/ui/text/TextStyle;

    .line 5
    .line 6
    iput-object p2, p0, Lk4;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 7
    .line 8
    iput-object p3, p0, Lk4;->l:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lk4;->m:Landroidx/compose/ui/text/AnnotatedString;

    .line 11
    .line 12
    iput-object p5, p0, Lk4;->n:Landroidx/compose/ui/unit/Density;

    .line 13
    .line 14
    iput-object p6, p0, Lk4;->o:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 15
    .line 16
    iput-boolean p7, p0, Lk4;->p:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lk4;->j:Landroidx/compose/ui/text/TextStyle;

    .line 2
    .line 3
    iget-object v1, p0, Lk4;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    iget-object v3, p0, Lk4;->m:Landroidx/compose/ui/text/AnnotatedString;

    .line 6
    .line 7
    iget-object v6, p0, Lk4;->n:Landroidx/compose/ui/unit/Density;

    .line 8
    .line 9
    iget-object v7, p0, Lk4;->o:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 10
    .line 11
    iget-boolean v8, p0, Lk4;->p:Z

    .line 12
    .line 13
    sget-object v2, Landroidx/compose/foundation/text/BasicText_androidKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 14
    .line 15
    const-string v2, "BackgroundTextMeasurement"

    .line 16
    .line 17
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    :try_start_0
    invoke-static {v2, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->g(Lma;Lec;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 22
    .line 23
    .line 24
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 25
    :try_start_1
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->j()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 26
    .line 27
    .line 28
    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextStyleKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 30
    .line 31
    .line 32
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    iget-object p0, p0, Lk4;->l:Ljava/util/List;

    .line 34
    .line 35
    if-nez p0, :cond_0

    .line 36
    .line 37
    :try_start_3
    sget-object p0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 38
    .line 39
    :cond_0
    move-object v5, p0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    move-object p0, v0

    .line 43
    goto :goto_1

    .line 44
    :goto_0
    new-instance v2, Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 45
    .line 46
    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->c()F

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->b()F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    .line 54
    .line 55
    :try_start_4
    invoke-static {v10}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 56
    .line 57
    .line 58
    :try_start_5
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->w()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotApplyResult;->a()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    move-object p0, v0

    .line 74
    goto :goto_2

    .line 75
    :goto_1
    :try_start_6
    invoke-static {v10}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 76
    .line 77
    .line 78
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 79
    :goto_2
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 80
    :catchall_2
    move-exception v0

    .line 81
    move-object p0, v0

    .line 82
    :try_start_8
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->c()V

    .line 83
    .line 84
    .line 85
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 86
    :catchall_3
    move-exception v0

    .line 87
    move-object p0, v0

    .line 88
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 89
    .line 90
    .line 91
    throw p0
.end method
