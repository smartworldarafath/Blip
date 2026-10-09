.class public abstract Lcom/google/firebase/heartbeatinfo/HeartBeatConsumerComponent;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a()Lcom/google/firebase/components/Component;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/firebase/heartbeatinfo/HeartBeatConsumerComponent$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/firebase/components/Component$Builder;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    new-array v3, v2, [Ljava/lang/Class;

    .line 10
    .line 11
    const-class v4, Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;

    .line 12
    .line 13
    invoke-direct {v1, v4, v3}, Lcom/google/firebase/components/Component$Builder;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    iput v3, v1, Lcom/google/firebase/components/Component$Builder;->e:I

    .line 18
    .line 19
    new-instance v3, Ld5;

    .line 20
    .line 21
    invoke-direct {v3, v2, v0}, Ld5;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v3, v1, Lcom/google/firebase/components/Component$Builder;->f:Lcom/google/firebase/components/ComponentFactory;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
