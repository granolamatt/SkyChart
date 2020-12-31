# Start from a core stack version
FROM jupyter/scipy-notebook:latest
# Install from requirements.txt file
COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
RUN cd /tmp/ && \
    git clone https://github.com/schoolpost/PyDNG.git && \
    cd PyDNG && \
    pip install src/. && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
