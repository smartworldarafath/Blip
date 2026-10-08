.class public Lcom/google/firebase/tracing/ComponentMonitor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrarProcessor;


# virtual methods
.method public final a(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .locals 9

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/google/firebase/components/ComponentRegistrar;->getComponents()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/firebase/components/Component;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/google/firebase/components/Component;->a:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    new-instance v7, Ln5;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {v7, v1, v2, v0}, Ln5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/google/firebase/components/Component;

    .line 37
    .line 38
    iget-object v3, v0, Lcom/google/firebase/components/Component;->b:Ljava/util/Set;

    .line 39
    .line 40
    iget-object v4, v0, Lcom/google/firebase/components/Component;->c:Ljava/util/Set;

    .line 41
    .line 42
    iget v5, v0, Lcom/google/firebase/components/Component;->d:I

    .line 43
    .line 44
    iget v6, v0, Lcom/google/firebase/components/Component;->e:I

    .line 45
    .line 46
    iget-object v8, v0, Lcom/google/firebase/components/Component;->g:Ljava/util/Set;

    .line 47
    .line 48
    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/components/Component;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILcom/google/firebase/components/ComponentFactory;Ljava/util/Set;)V

    .line 49
    .line 50
    .line 51
    move-object v0, v1

    .line 52
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-object p0
.end method
