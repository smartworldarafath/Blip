.class public abstract Lkotlin/random/Random;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/random/Random$Default;
    }
.end annotation


# static fields
.field public static final j:Lkotlin/random/Random$Default;

.field public static final k:Lkotlin/random/AbstractPlatformRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/random/Random$Default;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/random/Random;->j:Lkotlin/random/Random$Default;

    .line 7
    .line 8
    const/16 v0, 0x22

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/internal/jdk8/JDK8PlatformImplementations;->c(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lkotlin/random/jdk8/PlatformThreadLocalRandom;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lkotlin/random/FallbackThreadLocalRandom;

    .line 23
    .line 24
    invoke-direct {v0}, Lkotlin/random/FallbackThreadLocalRandom;-><init>()V

    .line 25
    .line 26
    .line 27
    :goto_0
    sput-object v0, Lkotlin/random/Random;->k:Lkotlin/random/AbstractPlatformRandom;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public b()I
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlin/random/Random;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    ushr-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    const v1, 0x186a0

    .line 8
    .line 9
    .line 10
    rem-int v1, v0, v1

    .line 11
    .line 12
    sub-int/2addr v0, v1

    .line 13
    const v2, 0x1869f

    .line 14
    .line 15
    .line 16
    add-int/2addr v0, v2

    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    return v1
.end method
