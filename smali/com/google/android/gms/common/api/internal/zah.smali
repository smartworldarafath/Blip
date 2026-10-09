.class public final Lcom/google/android/gms/common/api/internal/zah;
.super Lcom/google/android/gms/common/api/internal/zad;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public final bridge synthetic c(Lcom/google/android/gms/common/api/internal/zaaa;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/zabk;)[Lcom/google/android/gms/common/Feature;
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/google/android/gms/common/api/internal/zabk;->i:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-static {}, Lio/sentry/d;->i()V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/zabk;)Z
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/google/android/gms/common/api/internal/zabk;->i:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 p1, 0x0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    invoke-static {}, Lio/sentry/d;->i()V

    .line 13
    .line 14
    .line 15
    return p1
.end method

.method public final h(Lcom/google/android/gms/common/api/internal/zabk;)I
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/google/android/gms/common/api/internal/zabk;->i:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, -0x1

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-static {}, Lio/sentry/d;->i()V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final i(Lcom/google/android/gms/common/api/internal/zabk;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zabk;->i:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zad;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 11
    .line 12
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->d(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {}, Lio/sentry/d;->i()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
