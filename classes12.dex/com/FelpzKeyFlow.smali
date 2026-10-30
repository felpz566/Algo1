.class public final Lcom/FelpzKeyFlow;
.super Ljava/lang/Object;

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/FelpzKeyTask;
    invoke-direct {v0, p0, p1}, Lcom/FelpzKeyTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    return-void
.end method
