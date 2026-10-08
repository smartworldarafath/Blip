.class public abstract Lkotlin/jvm/internal/PropertyReference2;
.super Lkotlin/jvm/internal/PropertyReference;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/reflect/KProperty2;


# virtual methods
.method public final d()Lkotlin/reflect/KCallable;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlin/jvm/internal/PropertyReference;->q:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->g()Lkotlin/reflect/KCallable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eq v0, p0, :cond_0

    .line 10
    .line 11
    check-cast v0, Lkotlin/reflect/KProperty;

    .line 12
    .line 13
    check-cast v0, Lkotlin/reflect/KProperty2;

    .line 14
    .line 15
    check-cast v0, Lkotlin/jvm/internal/PropertyReference2;

    .line 16
    .line 17
    invoke-virtual {v0}, Lkotlin/jvm/internal/PropertyReference2;->h()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p0, Lkotlin/jvm/KotlinReflectionNotSupportedError;

    .line 22
    .line 23
    const-string v0, "Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath"

    .line 24
    .line 25
    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_1
    const-string p0, "Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980"

    .line 30
    .line 31
    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p0, Lkotlin/jvm/internal/PropertyReference2Impl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference2;->h()V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    throw p0
.end method
