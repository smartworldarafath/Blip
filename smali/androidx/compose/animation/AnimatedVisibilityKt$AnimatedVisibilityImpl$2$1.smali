.class final Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/animation/EnterExitState;",
        "Landroidx/compose/animation/EnterExitState;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$2$1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$2$1;->k:Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$2$1;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/animation/EnterExitState;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/animation/EnterExitState;

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    sget-object p0, Landroidx/compose/animation/EnterExitState;->l:Landroidx/compose/animation/EnterExitState;

    .line 8
    .line 9
    if-ne p2, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
