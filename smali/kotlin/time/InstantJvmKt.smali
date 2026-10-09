.class public abstract Lkotlin/time/InstantJvmKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lkotlin/time/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/internal/jdk8/JDK8PlatformImplementations;->c(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lkotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$1;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lkotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$2;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    :goto_0
    sput-object v0, Lkotlin/time/InstantJvmKt;->a:Lkotlin/time/Clock;

    .line 21
    .line 22
    return-void
.end method
