.class public final Landroidx/compose/ui/graphics/AndroidGraphicsContext$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/graphics/AndroidGraphicsContext;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/AndroidGraphicsContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext$2;->j:Landroidx/compose/ui/graphics/AndroidGraphicsContext;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext$2;->j:Landroidx/compose/ui/graphics/AndroidGraphicsContext;

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->d:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->e:Landroidx/compose/ui/graphics/AndroidGraphicsContext$1;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->d:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext$2;->j:Landroidx/compose/ui/graphics/AndroidGraphicsContext;

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->d:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->e:Landroidx/compose/ui/graphics/AndroidGraphicsContext$1;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->d:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method
