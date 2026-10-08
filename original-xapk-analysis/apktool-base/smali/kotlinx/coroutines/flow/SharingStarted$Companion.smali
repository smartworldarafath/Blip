.class public final Lkotlinx/coroutines/flow/SharingStarted$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/flow/SharingStarted;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/flow/SharingStarted;

.field public static final b:Lkotlinx/coroutines/flow/SharingStarted;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/StartedEagerly;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->a:Lkotlinx/coroutines/flow/SharingStarted;

    .line 7
    .line 8
    new-instance v0, Lkotlinx/coroutines/flow/StartedLazily;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->b:Lkotlinx/coroutines/flow/SharingStarted;

    .line 14
    .line 15
    return-void
.end method

.method public static a()Lkotlinx/coroutines/flow/SharingStarted;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
