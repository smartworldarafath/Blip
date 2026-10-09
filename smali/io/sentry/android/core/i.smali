.class public final synthetic Lio/sentry/android/core/i;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/concurrent/Callable;


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->c:Lio/sentry/android/core/internal/util/CpuInfoUtils;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->a()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
