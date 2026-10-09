.class final Landroidx/compose/animation/EnterExitTransitionKt$trackActiveExit$neutralData$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/unit/IntSize;",
        "Landroidx/compose/ui/unit/IntSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Landroidx/compose/animation/EnterExitTransitionKt$trackActiveExit$neutralData$2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$trackActiveExit$neutralData$2$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/animation/EnterExitTransitionKt$trackActiveExit$neutralData$2$1;->k:Landroidx/compose/animation/EnterExitTransitionKt$trackActiveExit$neutralData$2$1;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    .line 2
    .line 3
    iget-wide p0, p1, Landroidx/compose/ui/unit/IntSize;->a:J

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/unit/IntSize;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
