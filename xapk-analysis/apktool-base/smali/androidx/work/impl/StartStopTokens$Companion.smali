.class public final Landroidx/work/impl/StartStopTokens$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/StartStopTokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Z)Landroidx/work/impl/StartStopTokens;
    .locals 1

    .line 1
    new-instance v0, Landroidx/work/impl/StartStopTokensImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/work/impl/StartStopTokensImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    new-instance p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Landroidx/work/impl/SynchronizedStartStopTokensImpl;-><init>(Landroidx/work/impl/StartStopTokens;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    return-object v0
.end method
