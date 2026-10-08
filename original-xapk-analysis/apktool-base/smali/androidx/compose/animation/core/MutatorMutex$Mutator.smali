.class final Landroidx/compose/animation/core/MutatorMutex$Mutator;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/MutatorMutex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mutator"
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/animation/core/MutatePriority;->j:Landroidx/compose/animation/core/MutatePriority;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$Mutator;->a:Lkotlinx/coroutines/Job;

    .line 7
    .line 8
    return-void
.end method
