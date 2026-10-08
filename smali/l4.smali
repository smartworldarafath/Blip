.class public final synthetic Ll4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic k:Landroidx/compose/ui/unit/LayoutDirection;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Landroidx/compose/ui/unit/Density;

.field public final synthetic n:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final synthetic o:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;Ljava/lang/String;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll4;->j:Landroidx/compose/ui/text/TextStyle;

    .line 5
    .line 6
    iput-object p2, p0, Ll4;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 7
    .line 8
    iput-object p3, p0, Ll4;->l:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Ll4;->m:Landroidx/compose/ui/unit/Density;

    .line 11
    .line 12
    iput-object p5, p0, Ll4;->n:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 13
    .line 14
    iput-boolean p6, p0, Ll4;->o:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Ll4;->j:Landroidx/compose/ui/text/TextStyle;

    .line 2
    .line 3
    iget-object v1, p0, Ll4;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    iget-object v3, p0, Ll4;->l:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v8, p0, Ll4;->m:Landroidx/compose/ui/unit/Density;

    .line 8
    .line 9
    iget-object v7, p0, Ll4;->n:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 10
    .line 11
    iget-boolean v9, p0, Ll4;->o:Z

    .line 12
    .line 13
    sget-object p0, Landroidx/compose/foundation/text/BasicText_androidKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 14
    .line 15
    const-string p0, "BackgroundTextMeasurement"

    .line 16
    .line 17
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    :try_start_0
    invoke-static {p0, p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->g(Lma;Lec;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 25
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->j()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 26
    .line 27
    .line 28
    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextStyleKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    sget-object v5, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 34
    .line 35
    new-instance v2, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 36
    .line 37
    move-object v6, v5

    .line 38
    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->c()F

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->b()F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    .line 46
    .line 47
    :try_start_3
    invoke-static {v10}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    .line 49
    .line 50
    :try_start_4
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->w()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotApplyResult;->a()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 58
    .line 59
    .line 60
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto :goto_0

    .line 66
    :catchall_1
    move-exception v0

    .line 67
    :try_start_5
    invoke-static {v10}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 68
    .line 69
    .line 70
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 71
    :goto_0
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 72
    :catchall_2
    move-exception v0

    .line 73
    :try_start_7
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->c()V

    .line 74
    .line 75
    .line 76
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 77
    :catchall_3
    move-exception v0

    .line 78
    move-object p0, v0

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 80
    .line 81
    .line 82
    throw p0
.end method
