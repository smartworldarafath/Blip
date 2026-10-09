.class final Lkotlinx/coroutines/JobSupport$ChildCompletion;
.super Lkotlinx/coroutines/JobNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChildCompletion"
.end annotation


# instance fields
.field public final n:Lkotlinx/coroutines/JobSupport;

.field public final o:Lkotlinx/coroutines/JobSupport$Finishing;

.field public final p:Lkotlinx/coroutines/ChildHandleNode;

.field public final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$ChildCompletion;->n:Lkotlinx/coroutines/JobSupport;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/JobSupport$ChildCompletion;->o:Lkotlinx/coroutines/JobSupport$Finishing;

    .line 7
    .line 8
    iput-object p3, p0, Lkotlinx/coroutines/JobSupport$ChildCompletion;->p:Lkotlinx/coroutines/ChildHandleNode;

    .line 9
    .line 10
    iput-object p4, p0, Lkotlinx/coroutines/JobSupport$ChildCompletion;->q:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final m()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final n(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/JobSupport$ChildCompletion;->p:Lkotlinx/coroutines/ChildHandleNode;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlinx/coroutines/JobSupport;->W(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$ChildCompletion;->n:Lkotlinx/coroutines/JobSupport;

    .line 8
    .line 9
    iget-object v2, p0, Lkotlinx/coroutines/JobSupport$ChildCompletion;->o:Lkotlinx/coroutines/JobSupport$Finishing;

    .line 10
    .line 11
    iget-object p0, p0, Lkotlinx/coroutines/JobSupport$ChildCompletion;->q:Ljava/lang/Object;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v2, v0, p0}, Lkotlinx/coroutines/JobSupport;->j0(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, v2, Lkotlinx/coroutines/JobSupport$Finishing;->j:Lkotlinx/coroutines/NodeList;

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-virtual {v0, v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->e(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lkotlinx/coroutines/JobSupport;->W(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1, v2, p1, p0}, Lkotlinx/coroutines/JobSupport;->j0(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {v1, v2, p0}, Lkotlinx/coroutines/JobSupport;->F(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/JobSupport;->r(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
