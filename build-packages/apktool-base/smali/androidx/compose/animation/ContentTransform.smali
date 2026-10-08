.class public final Landroidx/compose/animation/ContentTransform;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/animation/EnterTransition;

.field public final b:Landroidx/compose/animation/ExitTransition;

.field public final c:Landroidx/compose/runtime/MutableFloatState;

.field public final d:Landroidx/compose/animation/SizeTransform;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;FLandroidx/compose/animation/SizeTransform;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/animation/ContentTransform;->a:Landroidx/compose/animation/EnterTransition;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/animation/ContentTransform;->b:Landroidx/compose/animation/ExitTransition;

    .line 7
    .line 8
    invoke-static {p3}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/compose/animation/ContentTransform;->c:Landroidx/compose/runtime/MutableFloatState;

    .line 13
    .line 14
    iput-object p4, p0, Landroidx/compose/animation/ContentTransform;->d:Landroidx/compose/animation/SizeTransform;

    .line 15
    .line 16
    return-void
.end method
